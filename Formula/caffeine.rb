class Caffeine < Formula
  desc "Keep your Mac awake — CLI + live menu bar countdown"
  homepage "https://github.com/juliocanizalez/caffeine"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/juliocanizalez/caffeine/releases/download/v#{version}/caffeine-aarch64-apple-darwin.tar.gz"
      sha256 "ecd7906778d217bf634bcb5abe391f0c29c359defa84fcced28a0e2caadb0a3f"
    end
    on_intel do
      url "https://github.com/juliocanizalez/caffeine/releases/download/v#{version}/caffeine-x86_64-apple-darwin.tar.gz"
      sha256 "3779286dbfbe4c6b1b04c1134c035edf3282656303c900760eeabff20079c4de"
    end
  end

  def install
    bin.install "caffeine"
  end

  test do
    assert_match "Keep your Mac awake", shell_output("#{bin}/caffeine --help")
  end
end
