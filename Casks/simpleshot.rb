cask "simpleshot" do
  version "1.0.0"
  sha256 "fbe8717362f3aa9e90d08d20a81ec71008e86b253c6efdbfe70518b6499c7458"

  url "https://github.com/alexrett/simpleshot/releases/download/v#{version}/SimpleShot.dmg"
  name "SimpleShot"
  desc "Wrap screenshots in beautiful gradient backgrounds"
  homepage "https://github.com/alexrett/simpleshot"

  depends_on macos: ">= :ventura"

  app "SimpleShot.app"

  zap trash: [
    "~/Library/Caches/com.malikov.simpleshot",
    "~/Library/Preferences/com.malikov.simpleshot.plist",
  ]
end
