cask "contextlattice" do
  version "3.8.0"
  sha256 "794e61b086b5fa843f15553557c7bdad7a05a55992879f5f2a170ec7db6a8b0f"

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
