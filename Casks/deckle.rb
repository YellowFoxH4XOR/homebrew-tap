cask "deckle" do
  version "1.5.0"
  sha256 "9d6c4ebf9393e90f0eaf4e3c16a404614453c38bdee4be3ddabcfd6128dc2a31"

  url "https://github.com/YellowFoxH4XOR/deckle/releases/download/v#{version}/Deckle-#{version}.dmg"
  name "Deckle"
  desc "Paper-grain texture overlay that makes your screen feel like paper"
  homepage "https://github.com/YellowFoxH4XOR/deckle"

  depends_on macos: :ventura

  app "Deckle.app"

  zap trash: [
    "~/Library/Preferences/app.deckle.Deckle.plist",
  ]
end
