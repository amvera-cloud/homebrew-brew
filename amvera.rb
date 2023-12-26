# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Amvera < Formula
  desc "Amvera CLI application"
  homepage "cloud.amvera.ru"
  url "https://github.com/amvera-cloud/homebrew-brew/releases/download/v0.9.4/amvera.tar.gz"
  sha256 "c0792ddb0a80a5e40109fd04964094527074aa6d0c79910f51d681b1d05e18e6"
  license ""

  def install
    os = OS.mac? ? "macos" : "linux"
    cpu = Hardware::CPU.arm? ? "arm64" : "x64"
    bin.install "amvera-#{os}-#{cpu}" => "amvera"
  end

  test do
  end
end
