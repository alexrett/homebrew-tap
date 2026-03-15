cask "simpleshot" do
  version "1.4.1"
  sha256 "2bb2c9e751800544e8ff1b4f75feab466d4f93d975e117e83b03dedcdc484db4"

  url "https://github.com/alexrett/simpleshot/releases/download/v#{version}/SimpleShot.dmg"
  name "SimpleShot"
  desc "Wrap screenshots in beautiful gradient backgrounds and annotate them"
  homepage "https://github.com/alexrett/simpleshot"

  depends_on macos: ">= :ventura"

  app "SimpleShot.app"

  zap trash: [
    "~/Library/Caches/com.malikov.simpleshot",
    "~/Library/Preferences/com.malikov.simpleshot.plist",
  ]
end
