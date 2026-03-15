cask "ai-rephrase" do
  version "1.0.0"
  sha256 "b9ae653e0b68b362b5811fda9940f28b006917d80e837eabea71d4dc16e57e7f"

  url "https://github.com/alexrett/rephrase/releases/download/v#{version}/AiRephrase.dmg"
  name "AI Rephrase"
  desc "Menu bar app that rephrases selected text using Apple Intelligence"
  homepage "https://github.com/alexrett/rephrase"

  depends_on macos: ">= :tahoe"

  app "AiRephrase.app"

  zap trash: [
    "~/Library/Caches/com.malikov.ai-rephrase",
    "~/Library/Preferences/com.malikov.ai-rephrase.plist",
  ]
end
