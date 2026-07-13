cask "contextlattice" do
  version "3.17.0"
  sha256 "e2c8c2cac61a9a24a73c3b10115190e0b88020d18d18f5af5c70d5b8fc0dabeb"

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
