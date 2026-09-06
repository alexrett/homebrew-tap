cask "window-burn" do
  version "0.4.0"
  sha256 "5a549b22f7bc3e19541be9b1938436328174c4024f2b79c001114a0954bbb481"

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
