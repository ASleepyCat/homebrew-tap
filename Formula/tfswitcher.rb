class Tfswitcher < Formula
  desc "Terraform and OpenTofu version switcher"
  homepage "https://github.com/ASleepyCat/tfswitcher"
  url "https://github.com/ASleepyCat/tfswitcher/archive/refs/tags/v0.7.0.tar.gz"
  sha256 "332daef1364f73aee8e1ade19ad0d9649e758ae08cc20aabfc6e0254ce4e387d"
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
