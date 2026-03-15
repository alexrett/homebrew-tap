cask "ai-status-monitor" do
  version "1.0.0"
  sha256 "bf5ea27659f405966cb6ea98ec6498db2ad142a56217fc1c26442c7235ccc8a0"

  url "https://github.com/alexrett/ai-status-monitor/releases/download/v#{version}/AIStatusMonitor.dmg"
  name "AI Status Monitor"
  desc "Menu bar app monitoring Claude & OpenAI service status"
  homepage "https://github.com/alexrett/ai-status-monitor"

  depends_on macos: ">= :ventura"

  app "AIStatusMonitor.app"

  zap trash: [
    "~/Library/Caches/com.malikov.ai-status-monitor",
    "~/Library/Preferences/com.malikov.ai-status-monitor.plist",
  ]
end
