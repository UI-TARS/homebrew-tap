cask "ui-tars" do
  arch arm: "arm64", intel: "x64"
  version "0.0.5"
  sha256 :no_check

  url "https://github.com/bytedance/UI-TARS-desktop/releases/download/v#{version}/UI.TARS-#{version}-#{arch}.dmg"
  name "UI-TARS Desktop"
  desc "A GUI Agent application based on UI-TARS(Vision-Lanuage Model) that allows you to control your computer using natural language"
  homepage "https://github.com/bytedance/UI-TARS-desktop"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "UI TARS.app"

  uninstall quit: "com.bytedance.uitars"

  zap trash: [
    "~/Library/Application Support/ui-tars-desktop",
    "~/Library/Logs/ui-tars-desktop"
  ]
end
