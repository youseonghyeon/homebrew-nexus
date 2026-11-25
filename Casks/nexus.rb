cask "nexus" do
  version "1.7.1"
  sha256 "58711a21507d9007aca97c7c0503b873301496cbc2759dadb39f5a006c399dbe"

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
