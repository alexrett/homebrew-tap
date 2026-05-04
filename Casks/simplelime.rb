cask "simplelime" do
  version "0.1.1"
  sha256 "c7399218feb933f0e2f50b144050cd3fe104cda485b601682233aa4fb6950fbb"

  url "https://github.com/alexrett/simplelime/releases/download/v#{version}/SimpleLime.dmg"
  name "SimpleLime"
  desc "Scratch-first text editor with temporary buffers and AI assistance"
  homepage "https://github.com/alexrett/simplelime"

  depends_on macos: ">= :ventura"

  app "SimpleLime.app"

  zap trash: [
    "~/Library/Application Support/SimpleLime",
    "~/Library/Caches/com.whitehappypony.SimpleLime",
    "~/Library/Preferences/com.whitehappypony.SimpleLime.plist",
  ]
end
