# Generated with JReleaser 1.22.0 at 2026-02-26T14:42:31.748308072Z

class Naviger < Formula
  desc "Modern Minecraft Server Manager"
  homepage "https://github.com/andre-carbajal/Naviger"
  version "1.12.1"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/andre-carbajal/Naviger/releases/download/v1.12.1/Naviger-1.12.1-linux.zip"
    sha256 "7b8d2732f094728272efb5f149f581e83a96fe94e506bfead731067e9df3413f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/andre-carbajal/Naviger/releases/download/v1.12.1/Naviger-1.12.1-macos-arm64.zip"
    sha256 "afe19f4b37dd17a0a27be01cd014c1c3d330ac4d54eb37a8440933c01729c564"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/andre-carbajal/Naviger/releases/download/v1.12.1/Naviger-1.12.1-macos-x64.zip"
    sha256 "e653207eb4b9c49e85cf7ef6ae268f1ceabd057ea49dd509a0aa8e7e8cfaa82c"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/naviger-server" => "naviger-server"
  end

  test do
    output = shell_output("#{bin}/naviger-server --version")
    assert_match "1.12.1", output
  end
end
