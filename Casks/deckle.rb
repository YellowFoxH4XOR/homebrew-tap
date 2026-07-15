cask "deckle" do
  version "1.3.4"
  sha256 "e45943a06a1ae4a0944f2aeb1cf40b7ae1c93fdddc291a2e6a59eac126165fd5"

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
