# Generated with JReleaser 1.24.0 at 2026-05-08T03:59:08.991510308Z

class Depanalyzer < Formula
  desc "Dependency Analyzer CLI"
  homepage "https://github.com/UPT-FAING-EPIS/proyecto-si784-2026-i-u1-analizador-de-dependencias"
  version "2.0.2"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/UPT-FAING-EPIS/proyecto-si784-2026-i-u1-analizador-de-dependencias/releases/download/v2.0.2/depanalyzer-macos-arm64.zip"
    sha256 "4e5d77d80b8ead3d1bf79414a926a7725daf1c0a7d0c4a578642bbbab3051f4a"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/depanalyzer" => "depanalyzer"
  end

  test do
    output = shell_output("#{bin}/depanalyzer --version")
    assert_match "2.0.2", output
  end
end
