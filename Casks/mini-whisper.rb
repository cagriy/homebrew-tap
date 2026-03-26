cask "mini-whisper" do
  version "0.1.5"
  sha256 "da883c1b61ff91bbd36c313b9c9d00e71bec972c8a964e59ebad07728aecf89d"

  url "https://github.com/cagriy/mini-whisper/releases/download/v#{version}/MiniWhisper-#{version}-arm64.dmg"
  name "Mini Whisper"
  desc "macOS menu bar dictation app with Whisper STT and LLM cleanup"
  homepage "https://github.com/cagriy/mini-whisper"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "Mini Whisper.app"

  zap trash: "~/.config/mini-whisper"
end
