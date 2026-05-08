cask "simplelime" do
  version "0.3.5"
  sha256 "ab2380b148ac3a2bc2d395c8bf5ab22b87d73c2547e5aefe709f11cbff361191"

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
