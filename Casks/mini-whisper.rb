cask "mini-whisper" do
  version ""
  sha256 "4c53e0dec20d9a65a8a992224791579239e2e7bbd7f23c38d57e12c8d2ce4489"

  url "https://github.com/cagriy/mini-whisper/releases/download/v#{version}/MiniWhisper-#{version}-arm64.dmg"
  name "Mini Whisper"
  desc "macOS menu bar dictation app with Whisper STT and LLM cleanup"
  homepage "https://github.com/cagriy/mini-whisper"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "Mini Whisper.app"

  zap trash: "~/.config/mini-whisper"
end
