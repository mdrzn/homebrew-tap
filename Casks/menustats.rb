cask "menustats" do
  version "0.2"
  sha256 "965273a38b707dcff8ed6ea667d88cbdd03ddb95b2c6cd702a1ee1291c5c81ff"

  url "https://github.com/mdrzn/menustats/releases/download/v#{version}/MenuStats.zip"
  name "MenuStats"
  desc "Menu bar system monitor for developers"
  homepage "https://github.com/mdrzn/menustats"

  depends_on macos: ">= :sonoma"

  app "MenuStats.app"

  uninstall quit: "app.menustats"

  zap trash: [
    "~/Library/Application Support/MenuStats",
    "~/Library/LaunchAgents/app.menustats.plist",
    "~/Library/Preferences/app.menustats.plist",
  ]
end
