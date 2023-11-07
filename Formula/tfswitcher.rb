class Tfswitcher < Formula
  desc "Terraform and OpenTofu version switcher"
  homepage "https://github.com/ASleepyCat/tfswitcher"
  url "https://github.com/ASleepyCat/tfswitcher/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "3f09740303075b038d6270b6146b5d53300de75fd2cef01e1da2f8f1e6511644"
  license "MIT"

  depends_on "rust" => :build

  # TODO: Add OpenTofu when it gets added to homebrew-core
  conflicts_with "terraform", because: "tfswitcher overwrites the current terraform install"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tfswitcher", "-V")
  end
end
