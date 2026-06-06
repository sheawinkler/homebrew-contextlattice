cask "contextlattice" do
  version "3.4.2"
  sha256 "d07559950b7d8f101b23efabdc80bcb6ba11393d1df8b07e26770defcd22f3c1"

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
