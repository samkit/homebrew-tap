cask "droid-scout" do
  version "0.1.7"
  sha256 "f1ebec3c0f4240085328d67d50d02ff946be55f5bf6b35d8a8398662ee01674b"

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

  uninstall quit: "com.droidscout.app"

  zap trash: [
    "~/Library/Application Support/Droid Scout",
    "~/Library/Logs/Droid Scout",
    "~/Library/Preferences/com.droidscout.app.plist",
  ]
end
