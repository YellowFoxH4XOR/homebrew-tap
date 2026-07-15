cask "deckle" do
  version "1.3.3"
  sha256 "3b57b64ad8b209f57ee7f61a5e5c59c81ebd76a607a6210674f6424c37ee2b55"

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
