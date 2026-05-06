# Generated with JReleaser 1.24.0 at 2026-05-06T22:36:41.896986925Z

class Depanalyzer < Formula
  desc "Dependency Analyzer CLI"
  homepage "https://github.com/UPT-FAING-EPIS/proyecto-si784-2026-i-u1-analizador-de-dependencias"
  version "1.1.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/UPT-FAING-EPIS/proyecto-si784-2026-i-u1-analizador-de-dependencias/releases/download/v1.1.1/depanalyzer-macos-arm64.zip"
    sha256 "751a710cb9f591856e214901bec4b672e17e27d162f44251f7f0f27e65f2f4d5"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/depanalyzer" => "depanalyzer"
  end

  test do
    output = shell_output("#{bin}/depanalyzer --version")
    assert_match "1.1.1", output
  end
end
