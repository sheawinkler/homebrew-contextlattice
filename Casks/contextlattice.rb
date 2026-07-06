cask "contextlattice" do
  version "3.10.0"
  sha256 "18f2e62260615870d8aef0026ef3c8be7bd560dcb193f0962d48258b68684f78"

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

  app "ContextLattice.app"
  app "ContextLattice Monitoring.app"

  zap trash: [
    "~/.contextlattice",
    "~/ContextLattice",
    "~/Library/Application Support/contextlattice",
    "~/Library/Logs/contextlattice",
  ]
end
