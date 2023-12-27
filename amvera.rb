# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Amvera < Formula
  desc "Amvera CLI application"
  homepage "cloud.amvera.ru"
  url "https://github.com/amvera-cloud/homebrew-brew/releases/download/v0.9.5/amvera.tar.gz"
  sha256 "b13087d6e2be41e420d6badb37bc81b8319b29740db93801e94d43090dc7d921"
  license ""

  def install
    os = OS.mac? ? "macos" : "linux"
    cpu = Hardware::CPU.arm? ? "arm" : "x64"
    bin.install "amvera-#{os}-#{cpu}" => "amvera"
  end

  test do
  end
end
