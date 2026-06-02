class Caffeine < Formula
  desc "Keep your Mac awake — CLI + live menu bar countdown"
  homepage "https://github.com/juliocanizalez/caffeine"
  version "0.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/juliocanizalez/caffeine/releases/download/v#{version}/caffeine-aarch64-apple-darwin.tar.gz"
      sha256 "ed2009861b13cb992cd7a2fafd5d77e2fcb0f5e9356753e82776f5da32778013"
    end
    on_intel do
      url "https://github.com/juliocanizalez/caffeine/releases/download/v#{version}/caffeine-x86_64-apple-darwin.tar.gz"
      sha256 "5cccf52f1f26d55981886b3731089b57aae5aa5a4e84c1a14cfda90a3adea90e"
    end
  end

  def install
    bin.install "caffeine"
  end

  test do
    assert_match "Keep your Mac awake", shell_output("#{bin}/caffeine --help")
  end
end
