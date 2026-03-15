cask "idler" do
  version "2.1.0"
  sha256 "212ce89b286dc5f9b9bd763c92036e269596590b81be52d988b1cc74f84f3fa9"

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
