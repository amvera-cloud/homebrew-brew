# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Amvera < Formula
  desc "Amvera CLI application"
  homepage "cloud.amvera.ru"
  url "https://github.com/amvera-cloud/homebrew-brew/releases/download/v0.9.5/amvera.tar.gz"
  sha256 "e3ef5ce08b48543b4cc2a0590084cf84eab9937009146464eb2db63325ce5b0d"
  license ""

  # depends_on "cmake" => :build

  def install
    os = OS.mac? ? "macos" : "linux"
    cpu = Hardware::CPU.arm? ? "arm" : "x64"
    bin.install "amvera-#{os}-#{cpu}" => "amvera"
  end

  test do
  end
end
