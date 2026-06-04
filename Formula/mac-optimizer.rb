class MacOptimizer < Formula
  desc "Interactive macOS disk space optimizer TUI"
  homepage "https://github.com/juliocanizalez/mac-optimizer-cli"
  url "https://github.com/juliocanizalez/mac-optimizer-cli/releases/download/v#{version}/mac-optimizer.sh"
  sha256 "PLACEHOLDER"
  version "1.2.0"
  license "MIT"

  def install
    bin.install "mac-optimizer.sh" => "mac-optimizer"
  end

  test do
    assert_match "mac-optimizer-cli", shell_output("#{bin}/mac-optimizer --help")
  end
end
