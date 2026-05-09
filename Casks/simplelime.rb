cask "simplelime" do
  version "0.3.6"
  sha256 "27a6f3fe5687e3c8824de019563954e2a794cd23d3d3468c81865b62284c230b"

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
