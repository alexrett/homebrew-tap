cask "simplelime" do
  version "0.2.0"
  sha256 "d76ef57442890f1156a46d98ff1980678cbf205cb134dddb71622cdebb1da74d"

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
