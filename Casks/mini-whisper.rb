cask "mini-whisper" do
  version "0.5.0"
  sha256 "358d8d55de392010b00f45528fd0316791a4c8484153894e7f0fcdd4905a0fb1"

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
