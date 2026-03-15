cask "ai-rephrase" do
  version "1.1.0"
  sha256 "b7543fe69ff41558bc16acd0b5105846913bdbc7f6470827a67b5bc4b400b243"

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
