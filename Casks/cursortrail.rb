cask "cursortrail" do
  version "0.1"
  sha256 "980b1651e9080862edbae46fad08713fa7bd64a6367be0e3d60a251dd797d5c0"

  url "https://github.com/mdrzn/cursor-trail/releases/download/v#{version}/CursorTrail.zip"
  name "CursorTrail"
  desc "Cursor trail and ghost copies of the pointer"
  homepage "https://github.com/mdrzn/cursor-trail"

  depends_on macos: ">= :sonoma"

  app "CursorTrail.app"

  uninstall quit: "local.cursortrail"

  zap trash: [
    "~/Library/LaunchAgents/local.cursortrail.plist",
    "~/Library/Preferences/local.cursortrail.plist",
  ]
end
