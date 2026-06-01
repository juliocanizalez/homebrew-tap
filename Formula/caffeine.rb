class Caffeine < Formula
  desc "Keep your Mac awake — CLI + live menu bar countdown"
  homepage "https://github.com/juliocanizalez/caffeine"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/juliocanizalez/caffeine/releases/download/v#{version}/caffeine-aarch64-apple-darwin.tar.gz"
      sha256 "b8441fbf168df21ed81eb9626ddb96191ec879e983ea89e0769c12ba6f2edf16"
    end
    on_intel do
      url "https://github.com/juliocanizalez/caffeine/releases/download/v#{version}/caffeine-x86_64-apple-darwin.tar.gz"
      sha256 "4d25aa84c9cff13f70c21debd5de95ea56d04623d42f79aeb156faf8ce00a2a6"
    end
  end

  def install
    bin.install "caffeine"
  end

  test do
    assert_match "Keep your Mac awake", shell_output("#{bin}/caffeine --help")
  end
end
