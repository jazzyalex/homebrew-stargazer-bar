cask "gh-menu-stars" do
  version "0.1.0"
  sha256 "a033f1e47e27a9af35e41c4a0b36c28ecec12390236fead35222a755a9cdcb3e"

  url "https://github.com/jazzyalex/GH-menu-stars/releases/download/v#{version}/GHMenuStars-#{version}.dmg",
      verified: "github.com/jazzyalex/GH-menu-stars/"
  name "GH Menu Stars"
  desc "Native macOS menu-bar tracker for GitHub stars and release downloads"
  homepage "https://jazzyalex.github.io/GH-menu-stars/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "GHMenuStars.app"

  zap trash: [
    "~/Library/Preferences/com.jazzyalex.GHMenuStars.plist",
    "~/Library/Saved Application State/com.jazzyalex.GHMenuStars.savedState",
  ]
end
