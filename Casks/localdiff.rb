cask "localdiff" do
  version "1.0.0"
  sha256 "758844f79e38e7055a84db3e3dac358b6395fc350c311ee4af5a84a97ce6fbdb"

  url "https://github.com/ff2248/local-diff/releases/download/v#{version}/LocalDiff-v#{version}.dmg"
  name "LocalDiff"
  desc "Offline side-by-side text diff with character-level highlights"
  homepage "https://github.com/ff2248/local-diff"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "LocalDiff.app"

  zap trash: [
    "~/Library/Application Scripts/io.github.ff2248.localdiff",
    "~/Library/Containers/io.github.ff2248.localdiff",
  ]
end
