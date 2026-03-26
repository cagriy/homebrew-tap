cask "mini-whisper" do
  version "0.1.6"
  sha256 "98e9f790978f9f9d7c149899f056d70f27a24b165f9e1c9b339369d96ae2c241"

  url "https://github.com/cagriy/mini-whisper/releases/download/v#{version}/MiniWhisper-#{version}-arm64.dmg"
  name "Mini Whisper"
  desc "macOS menu bar dictation app with Whisper STT and LLM cleanup"
  homepage "https://github.com/cagriy/mini-whisper"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "Mini Whisper.app"

  zap trash: "~/.config/mini-whisper"
end
