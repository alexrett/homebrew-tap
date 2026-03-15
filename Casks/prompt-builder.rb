cask "prompt-builder" do
  version "1.0.0"
  sha256 "9a01a6f23616d9c745650066272cde46fafa696660acfa55267275da92739671"

  url "https://github.com/alexrett/prompt-builder/releases/download/v#{version}/PromptBuilder.dmg"
  name "Prompt Builder"
  desc "Assemble large LLM context prompts from codebases"
  homepage "https://github.com/alexrett/prompt-builder"

  depends_on macos: ">= :ventura"

  app "PromptBuilder.app"

  zap trash: [
    "~/Library/Caches/com.whitehappypony.prompt-builder",
    "~/Library/Preferences/com.whitehappypony.prompt-builder.plist",
  ]
end
