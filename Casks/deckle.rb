cask "deckle" do
  version "1.4.0"
  sha256 "6f8a5a5063e452ce0d06da59909f0fa3304e0806146f7122f21c6e150bf599d1"

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
