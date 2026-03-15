cask "ai-rephrase" do
  version "1.1.0"
  sha256 "da13853d4a8a002fb58848e9357ae070e38d61632a6ac4fa3e94b5ae6962a0d5"

  url "https://github.com/alexrett/rephrase/releases/download/v#{version}/AiRephrase.dmg"
  name "AI Rephrase"
  desc "Menu bar app that rephrases selected text using Apple Intelligence or Ollama"
  homepage "https://github.com/alexrett/rephrase"

  depends_on macos: ">= :tahoe"

  app "AiRephrase.app"

  zap trash: [
    "~/Library/Caches/com.malikov.ai-rephrase",
    "~/Library/Preferences/com.malikov.ai-rephrase.plist",
  ]
end
