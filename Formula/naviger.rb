# Generated with JReleaser 1.22.0 at 2026-02-26T20:25:04.941138412Z

class Naviger < Formula
  desc "Modern Minecraft Server Manager"
  homepage "https://github.com/andre-carbajal/Naviger"
  version "1.12.1"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/andre-carbajal/Naviger/releases/download/v1.12.1/Naviger-1.12.1-linux.zip"
    sha256 "bedc9a018261e75846e42fb964bb4a68b99dc381c7ce366ccd320627b7a67b6f"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/andre-carbajal/Naviger/releases/download/v1.12.1/Naviger-1.12.1-macos.zip"
    sha256 "7e238071c4308fa913bf25cdf459203a1eef9f292de95d8de52038dff07c7c12"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/andre-carbajal/Naviger/releases/download/v1.12.1/Naviger-1.12.1-macos.zip"
    sha256 "7e238071c4308fa913bf25cdf459203a1eef9f292de95d8de52038dff07c7c12"
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
