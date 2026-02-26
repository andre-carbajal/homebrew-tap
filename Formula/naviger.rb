# Generated with JReleaser 1.22.0 at 2026-02-26T19:18:33.816196205Z

class Naviger < Formula
  desc "Modern Minecraft Server Manager"
  homepage "https://github.com/andre-carbajal/Naviger"
  version "1.12.1"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/andre-carbajal/Naviger/releases/download/v1.12.1/Naviger-1.12.1-linux.zip"
    sha256 "1635960d4c4eff6a4980a5a8c8b663f23e82990419185f0e305de09128c11492"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/andre-carbajal/Naviger/releases/download/v1.12.1/Naviger-1.12.1-macos.zip"
    sha256 "4b6dfa6d8b6ee6e86c333014d580117f1b491283536879c1ea65a2edaae8bb52"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/andre-carbajal/Naviger/releases/download/v1.12.1/Naviger-1.12.1-macos.zip"
    sha256 "4b6dfa6d8b6ee6e86c333014d580117f1b491283536879c1ea65a2edaae8bb52"
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
