# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Amvera < Formula
  desc "Amvera CLI application"
  homepage "cloud.amvera.ru"
  url "https://github.com/amvera-cloud/homebrew-brew/releases/download/v0.9.4/amvera.tar.gz"
  sha256 "3f653e4e483774300fa9b9437e27accd7065fc0e7ea8bb7f649de84cf526a6e1"
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
