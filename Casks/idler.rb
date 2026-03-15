cask "idler" do
  version "2.0.0"
  sha256 "908084d31d011b46ded8bea35166517d3d3886d7190392ba2e50e152989355e9"

  url "https://github.com/alexrett/idler2/releases/download/v#{version}/Idler.dmg"
  name "Idler"
  desc "Menu bar app that keeps your Mac awake — prevents sleep with one click"
  homepage "https://github.com/alexrett/idler2"

  depends_on macos: ">= :ventura"

  app "Idler.app"

  zap trash: [
    "~/Library/Caches/com.malikov.idler",
    "~/Library/Preferences/com.malikov.idler.plist",
  ]
end
