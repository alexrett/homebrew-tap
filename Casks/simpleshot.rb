cask "simpleshot" do
  version "1.5.0"
  sha256 "27c86c4bcd0b164f5652e6c12d6caad637df1fc284b67ca2b35ab1fd76749be9"

  url "https://github.com/alexrett/simpleshot/releases/download/v1.5.0/SimpleShot.dmg"
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
