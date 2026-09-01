cask "window-burn" do
  version "0.3.0"
  sha256 "0f82a601e7b26b6ac1242750a311a3e4eef355982503a47d00dfb66e133e1d34"

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
