cask "simplelime" do
  version "0.3.1"
  sha256 "20d918611d801901ef386f9dd2f21694095023015f5e916005b01e367c2351d3"

  url "https://github.com/alexrett/simplelime/releases/download/v#{version}/SimpleLime.dmg"
  name "SimpleLime"
  desc "Scratch-first text editor with temporary buffers and AI assistance"
  homepage "https://github.com/alexrett/simplelime"

  depends_on macos: ">= :ventura"

  app "SimpleLime.app"
  binary "#{appdir}/SimpleLime.app/Contents/Resources/simplelime"

  zap trash: [
    "~/Library/Application Support/SimpleLime",
    "~/Library/Caches/com.whitehappypony.SimpleLime",
    "~/Library/Preferences/com.whitehappypony.SimpleLime.plist",
  ]
end
