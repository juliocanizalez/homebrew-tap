class MacOptimizer < Formula
  desc "Interactive macOS disk space optimizer TUI"
  homepage "https://github.com/juliocanizalez/mac-optimizer-cli"
  url "https://github.com/juliocanizalez/mac-optimizer-cli/releases/download/v#{version}/mac-optimizer.sh"
  sha256 "57d6fd6d724e8a2393d9208e0f3a4834079b01c29c3ac28faa983aece6fbe744"
  version "1.3.0"
  license "MIT"

  def install
    bin.install "mac-optimizer.sh" => "mac-optimizer"
  end

  test do
    assert_match "mac-optimizer-cli", shell_output("#{bin}/mac-optimizer --help")
  end
end
