# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Tfswitcher < Formula
  desc "Terraform and OpenTofu version switcher"
  homepage "https://github.com/ASleepyCat/tfswitcher"
  version "v0.4.1"
  license "MIT"

  on_linux do
    url "https://github.com/ASleepyCat/tfswitcher/releases/download/#{version}/tfswitcher_#{version}_x86_64-unknown-linux-musl.tar.gz"
    sha256 "181cfa4275777713bcd5eda7ae09eb2699a280bf9278de0944918d22158e2c14"
  end

  on_macos do
    url "https://github.com/ASleepyCat/tfswitcher/releases/download/#{version}/tfswitcher_#{version}_x86_64-apple-darwin.zip"
    sha256 "73c615c3ff250e3ba3251a86d1f7cca0a1d9eded89ca10f0d68f87a9412f451e"
  end

  def install
    bin.install "tfswitcher"
  end
end
