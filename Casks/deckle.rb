cask "deckle" do
  version "1.2.0"
  sha256 "3fc24acd649d6f63dc392d7dc3d99e45232fddfeb040eaf2a61b5d7f56d3a958"

  url "https://github.com/YellowFoxH4XOR/deckle/releases/download/v#{version}/Deckle-#{version}.dmg"
  name "Deckle"
  desc "Paper-grain texture overlay that makes your screen feel like paper"
  homepage "https://github.com/YellowFoxH4XOR/deckle"

  depends_on macos: :ventura

  app "Deckle.app"

  caveats <<~EOS
    Deckle is open source and not notarized. If macOS blocks the first
    launch, go to System Settings > Privacy & Security, scroll to the
    Security section, and click "Open Anyway" next to the Deckle message.
    Or skip the prompt entirely with:
      brew reinstall --cask deckle --no-quarantine
  EOS

  zap trash: [
    "~/Library/Preferences/app.deckle.Deckle.plist",
  ]
end
