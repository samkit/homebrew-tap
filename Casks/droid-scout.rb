cask "droid-scout" do
  version "0.2.1"
  sha256 "e97746faa51b2cf2e2b50947a7988c505de1ef5ad99d34f742d69adb6aac55e5"

  url "https://github.com/samkit/droid-scout/releases/download/v#{version}/DroidScout-#{version}.zip",
      verified: "github.com/samkit/droid-scout/"
  name "Droid Scout"
  desc "Menu bar utility for Android device and ADB workflows"
  homepage "https://github.com/samkit/droid-scout"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Droid Scout.app"

  postflight do
    # Remove quarantine attribute (for unsigned builds from this tap). Always succeed even if attr is absent.
    system_command "/bin/sh",
                   args: ["-c", "/usr/bin/xattr -d com.apple.quarantine \"#{appdir}/Droid Scout.app\" 2>/dev/null || true"]
  end

  uninstall quit: "com.droidscout.app"

  zap trash: [
    "~/Library/Application Support/Droid Scout",
    "~/Library/Logs/Droid Scout",
    "~/Library/Preferences/com.droidscout.app.plist",
  ]
end
