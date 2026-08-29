cask "deckle" do
  version "1.6.0"
  sha256 "c61fbeb70f2fbe361e94b2150e3898fa5517080485a082d4cabeac126df19b83"

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
