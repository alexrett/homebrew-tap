cask "window-burn" do
  version "0.3.1"
  sha256 "aa394b8222ce7abec7d8d4d68d84e79d6decc46d871afa8b520b8ddc963f202c"

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
