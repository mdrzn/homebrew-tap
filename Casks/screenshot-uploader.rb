cask "screenshot-uploader" do
  version "4.0.0"
  sha256 "f3a40059be4cac3d063d32c1f73a133ecaa45a6dc04db39551e0ad0ae13417d3"

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
