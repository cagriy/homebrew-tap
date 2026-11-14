cask "mini-whisper" do
  version "0.7.0"
  sha256 "c61ada446594a1eafc51872f7b83a56804a00a56c45a4800ff7982fb05a56b6f"

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
