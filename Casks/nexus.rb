cask "nexus" do
  version "1.4.0"
  sha256 "7b4ce35ad2021be9e1115bef32b5ee178385085dc3260a9ac4c1ff6767fa5e04"

  url "https://github.com/youseonghyeon/nexus/releases/download/v#{version}/Nexus-#{version}.zip"
  name "Nexus"
  desc "Server dashboard with SSH terminal, tunnels, file transfer and network tools"
  homepage "https://github.com/youseonghyeon/nexus"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "Nexus.app"

  zap trash: [
    "~/Library/Application Support/Servers",
    "~/Library/Preferences/local.yuseonghyeon.servers.plist",
  ]
end
