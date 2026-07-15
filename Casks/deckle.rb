cask "deckle" do
  version "1.3.1"
  sha256 "b54fdd489461571b934acde3f00ae0d8d0791c2a0bca85fad44a167ea94727b4"

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
