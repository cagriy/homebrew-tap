cask "mini-whisper" do
  version "0.6.2"
  sha256 "998f036726c030e0b9eb691e4a0266722a454357c8619e75116a88c07b237450"

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
