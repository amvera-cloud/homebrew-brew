# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Amvera < Formula
  desc "Amvera CLI application"
  homepage "cloud.amvera.ru"
  url "https://github.com/kimutir/amvera-cli/releases/download/v0.9.2/amvera.tar.gz"
  sha256 ""
  license ""

  def install
    os = OS.mac? ? "macos" : "linux"
    cpu = Hardware::CPU.arm? ? "arm64" : "x64"
    bin.install "amvera-#{os}-#{cpu}" => "amvera"
  end

  test do
  end
end
