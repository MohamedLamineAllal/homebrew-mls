class Mls < Formula
  desc "High-performance storage cleanup tool for macOS"
  homepage "https://github.com/MohamedLamineAllal/MrLeanStorage"
  url "https://github.com/MohamedLamineAllal/MrLeanStorage/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "REPLACE_WITH_SHA256_HASH" 
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", "mls", "main.go"
    bin.install "mls"
  end

  test do
    system "#{bin}/mls", "--version"
  end
end
