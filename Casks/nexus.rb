cask "nexus" do
  version "1.7.2"
  sha256 "81dc96a245f1ee6dd75dab19e6bed0f45f7379cbffb978629d15d7232e562b29"

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
