cask "screenshot-uploader" do
  version "4.0.1"
  sha256 "3fb3220ba41e6ee3e6214e055a26f69b497b3983a4a7ae149ef52f0147208ef0"

  url "https://github.com/mdrzn/claude-screenshot-uploader/releases/download/v#{version}/ScreenshotUploader.zip"
  name "Screenshot Uploader"
  desc "Upload screenshots over SSH and copy the remote path for Claude Code"
  homepage "https://github.com/mdrzn/claude-screenshot-uploader"

  depends_on macos: :sonoma

  app "Screenshot Uploader.app"

  uninstall quit: "com.mdrzn.screenshot-uploader"

  zap trash: [
    "~/.claude-screenshot-uploader",
    "~/Library/Caches/ScreenshotUploader",
    "~/Library/LaunchAgents/com.mdrzn.screenshot-uploader.plist",
    "~/Library/Preferences/com.mdrzn.screenshot-uploader.plist",
  ]
end
