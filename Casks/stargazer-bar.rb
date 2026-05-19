cask "stargazer-bar" do
  version "0.1.1"
  sha256 "44eff7f9e26af39255d81b7e8a542cc89ec6909ddd5b2b66c922789a01d6da27"

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
