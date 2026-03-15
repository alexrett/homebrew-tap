cask "swm" do
  version "1.0.0"
  sha256 "23aed05c49e9026a0eff78247c000c09e415fd333745a390356e2d4ff8336fbb"

  url "https://github.com/alexrett/simple-window-manager/releases/download/v#{version}/SWM.dmg"
  name "SWM"
  desc "Simple, opinionated macOS window manager"
  homepage "https://github.com/alexrett/simple-window-manager"

  depends_on macos: ">= :ventura"

  app "SWM.app"

  zap trash: [
    "~/Library/Caches/com.malikov.swm",
    "~/Library/Preferences/com.malikov.swm.plist",
  ]
end
