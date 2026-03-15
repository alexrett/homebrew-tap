cask "simpleshot" do
  version "1.1.0"
  sha256 "de70cd67a72fabeccdc340e89465c50d330d2d08cc9221c561a110870e639efd"

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
