cask "simpleshot" do
  version "1.5.1"
  sha256 "dbdeacf2718aa518c956e54d53a2c54382b292822236a8bf124272f9bdb4fcc7"

  url "https://github.com/alexrett/simpleshot/releases/download/v1.5.1/SimpleShot.dmg"
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
