# Generated with JReleaser 1.24.0 at 2026-05-06T22:01:44.73898286Z

class Depanalyzer < Formula
  desc "Dependency Analyzer CLI"
  homepage "https://github.com/UPT-FAING-EPIS/proyecto-si784-2026-i-u1-analizador-de-dependencias"
  version "1.1.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/UPT-FAING-EPIS/proyecto-si784-2026-i-u1-analizador-de-dependencias/releases/download/v1.1.0/depanalyzer-macos-arm64.zip"
    sha256 "3b5cf9ddedea550e9fd227683211ec8b97a6d9f68d83ecbbc1a872e4e74c5862"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/depanalyzer" => "depanalyzer"
  end

  test do
    output = shell_output("#{bin}/depanalyzer --version")
    assert_match "1.1.0", output
  end
end
