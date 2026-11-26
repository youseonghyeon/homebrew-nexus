cask "nexus" do
  version "1.7.6"
  sha256 "a6fd1dab62ef44f4f5400782a8631a5b776bf39f11d4462a0f6fa5b5c6affc32"

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
