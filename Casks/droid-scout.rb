cask "droid-scout" do
  version "0.1.4"
  sha256 "377e72d0f803e42a1ba72255da8a833fc1e27ee8f344abbdffde4ee2a7d08520"

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
