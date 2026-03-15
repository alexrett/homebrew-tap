cask "swm" do
  version "1.0.0"
  sha256 "45cdc69bad9a94757624bf8f0474754121016e06d01cc99cbd81b8c5f19e2ae8"

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
