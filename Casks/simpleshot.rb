cask "simpleshot" do
  version "1.5.0-test8"
  sha256 "b22ed2d2120c85d7d8555c20d61882ccd052c67142f63793335eb47c5b34b7b7"

  url "https://github.com/alexrett/simpleshot/releases/download/v1.5.0-test8/SimpleShot.dmg"
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
