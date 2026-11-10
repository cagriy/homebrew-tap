cask "mini-whisper" do
  version "0.5.1"
  sha256 "1b4e2677e0d4009e484508ece3cf072928ea9f298fd11a9d50c2050f1bb42c6d"

  url "https://github.com/cagriy/mini-whisper/releases/download/v#{version}/MiniWhisper-#{version}-arm64.dmg"
  name "Mini Whisper"
  desc "macOS menu bar dictation app with Whisper STT and LLM cleanup"
  homepage "https://github.com/cagriy/mini-whisper"

  auto_updates true

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "Mini Whisper.app"

  zap trash: "~/.config/mini-whisper"
end
