cask "nexus" do
  version "1.2.1"
  sha256 "b1b5df616d86159673bf82c670671977906ce35e54eb1055a41f971e3bf4dab2"

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
