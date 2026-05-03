cask "simpleshot" do
  version "1.4.3"
  sha256 "52975618a97049e805b0668e1479245d42297d0e54f628a106c5afe93703e4b4"

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
