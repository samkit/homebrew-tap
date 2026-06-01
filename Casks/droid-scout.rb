cask "droid-scout" do
  version "0.1.9"
  sha256 "118609c53b13e3359a2edb96256404da3ffbdf7224d0c2541f3f269f328f052a"

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
