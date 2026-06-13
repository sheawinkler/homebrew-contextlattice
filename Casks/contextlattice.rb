cask "contextlattice" do
  version "3.4.15"
  sha256 "960079a626fba8c1f4622225365f673ffc67945a5874b0fc6df3f3b64979fd60"

  url "https://github.com/sheawinkler/ContextLattice/releases/download/v#{version}/ContextLattice-macOS-universal.dmg",
      verified: "github.com/sheawinkler/ContextLattice/"
  name "ContextLattice"
  desc "Local-first memory infrastructure for AI agents"
  homepage "https://contextlattice.io/"

  livecheck do
    url "https://github.com/sheawinkler/ContextLattice/releases/latest"
    strategy :github_latest
  end

  depends_on macos: :ventura

  artifact "ContextLattice.command", target: "#{appdir}/ContextLattice.command"
  artifact "Monitoring.command", target: "#{appdir}/ContextLattice Monitoring.command"
  artifact "README.txt", target: "#{appdir}/ContextLattice README.txt"

  zap trash: [
    "~/.contextlattice",
    "~/ContextLattice",
    "~/Library/Application Support/contextlattice",
    "~/Library/Logs/contextlattice",
  ]
end
