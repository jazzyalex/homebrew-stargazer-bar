cask "stargazer-bar" do
  version "0.2.1"
  sha256 "a2bf2edbb8c8adbbec1edf354d53b818f21e70c9930b864c508d42c75734758e"

  url "https://github.com/jazzyalex/stargazer-bar/releases/download/v#{version}/Stargazer-Bar-#{version}.dmg",
      verified: "github.com/jazzyalex/stargazer-bar/"
  name "Stargazer Bar"
  desc "Native macOS menu-bar tracker for GitHub stars and release downloads"
  homepage "https://jazzyalex.github.io/stargazer-bar/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "Stargazer Bar.app"

  zap trash: [
    "~/Library/Preferences/com.jazzyalex.StargazerBar.plist",
    "~/Library/Preferences/com.jazzyalex.GHMenuStars.plist",
    "~/Library/Saved Application State/com.jazzyalex.StargazerBar.savedState",
    "~/Library/Saved Application State/com.jazzyalex.GHMenuStars.savedState",
  ]
end
