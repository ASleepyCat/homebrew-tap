class Tfswitcher < Formula
  desc "Terraform and OpenTofu version switcher"
  homepage "https://github.com/ASleepyCat/tfswitcher"
  url "https://github.com/ASleepyCat/tfswitcher/archive/refs/tags/v0.9.0.tar.gz"
  sha256 "0ce56c73d175c5cd35cd1b7db96f211c104850c9c1a001ad64097ed4495af141"
  license "MIT"

  depends_on "openssl" => :build
  depends_on "pkg-config" => :build
  depends_on "rust" => :build

  # TODO: Add OpenTofu when it gets added to homebrew-core
  conflicts_with "terraform", because: "tfswitcher overwrites the current terraform install"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "tfswitcher #{version}", shell_output("#{bin}/tfswitcher -V")
  end
end
