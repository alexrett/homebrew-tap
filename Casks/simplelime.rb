cask "simplelime" do
  version "0.2.1"
  sha256 "398c1a373c998a5d68cbf0c8c50ed6b36ba58d47013ab2dd56d5b89ebadf74b3"

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
