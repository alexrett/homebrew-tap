cask "window-burn" do
  version "0.1.0"
  sha256 "c1723e679a9e4a94a42a40a6ea6678a1b9ee6a9e7f4874e5775bacb2dfc5622e"

  url "https://github.com/alexrett/window-burn/releases/download/v#{version}/WindowBurn.dmg"
  name "Window Burn"
  desc "Burn windows away with Beryl-inspired Metal effects"
  homepage "https://github.com/alexrett/window-burn"

  depends_on macos: :sonoma

  app "Window Burn.app"

  uninstall quit: "dev.malikov.WindowBurn"

  zap trash: [
    "~/Library/Caches/dev.malikov.WindowBurn",
    "~/Library/Preferences/dev.malikov.WindowBurn.plist",
  ]

  caveats <<~EOS
    Window Burn requires Accessibility, Screen Recording, and Input Monitoring
    permissions in System Settings → Privacy & Security.

    Screen Recording may not prompt automatically. Open Screen & System Audio
    Recording, click +, and add /Applications/Window Burn.app manually. Then
    quit and reopen Window Burn.

    Warning: recognized unsaved-document sheets are closed with Delete / Don't Save.
    Those changes cannot be recovered.
  EOS
end
