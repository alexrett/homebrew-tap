cask "ai-rephrase" do
  version "1.1.0"
  sha256 "f5acbbe4a763f9ad2b17f79b51c1cf0d815c8a6a88fed58dc938a838d6432c8e"

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
