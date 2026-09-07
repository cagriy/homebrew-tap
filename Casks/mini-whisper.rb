cask "mini-whisper" do
  version "0.4.0"
  sha256 "e6d117305138caecf3481d1416192c8c8d69d1356d6a6074dcd1befe1f909a37"

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
