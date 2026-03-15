cask "simpleshot" do
  version "1.2.0"
  sha256 "3d40af58657424f63e94099f3f0c4079c8861e323bf302850ca881bccfdcc442"

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
