class Tfswitcher < Formula
  desc "Terraform and OpenTofu version switcher"
  homepage "https://github.com/ASleepyCat/tfswitcher"
  url "https://github.com/ASleepyCat/tfswitcher/archive/refs/tags/v0.6.1.tar.gz"
  sha256 "8ea8d6875a699701900e0ab16f863d1e538f7708871f42d5dc78c63fdd652632"
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
