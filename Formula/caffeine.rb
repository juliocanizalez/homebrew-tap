class Caffeine < Formula
  desc "Keep your Mac awake — CLI + live menu bar countdown"
  homepage "https://github.com/juliocanizalez/caffeine"
  version "0.3.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/juliocanizalez/caffeine/releases/download/v#{version}/caffeine-aarch64-apple-darwin.tar.gz"
      sha256 "df12ac5d265c38b8daf9cbc2c9b38e5cdeb8b6cb72701938f2fd5938efc05c13"
    end
    on_intel do
      url "https://github.com/juliocanizalez/caffeine/releases/download/v#{version}/caffeine-x86_64-apple-darwin.tar.gz"
      sha256 "26c54349f8017c0bda8c20c41d1ce6656868c7d37b8d787558aabb39f1f5f120"
    end
  end

  def install
    bin.install "caffeine"
  end

  test do
    assert_match "Keep your Mac awake", shell_output("#{bin}/caffeine --help")
  end
end
