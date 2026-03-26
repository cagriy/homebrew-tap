cask "mini-whisper" do
  version "0.1.5"
  sha256 "e3bad9afb9a00a33529e00746035ae8464913a7d78c7146b3742b32c542c2a71"

  url "https://github.com/cagriy/mini-whisper/releases/download/v#{version}/MiniWhisper-#{version}-arm64.dmg"
  name "Mini Whisper"
  desc "macOS menu bar dictation app with Whisper STT and LLM cleanup"
  homepage "https://github.com/cagriy/mini-whisper"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "Mini Whisper.app"

  zap trash: "~/.config/mini-whisper"
end
