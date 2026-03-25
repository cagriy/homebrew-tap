cask "mini-whisper" do
  version "0.1.4"
  sha256 "89d8248506ca82a25b6405074f0abf8e27c9f2d0a31d6018d4c0febcc8217462"

  url "https://github.com/cagriy/mini-whisper/releases/download/v#{version}/MiniWhisper-#{version}-arm64.dmg"
  name "Mini Whisper"
  desc "macOS menu bar dictation app with Whisper STT and LLM cleanup"
  homepage "https://github.com/cagriy/mini-whisper"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "Mini Whisper.app"

  zap trash: "~/.config/mini-whisper"
end
