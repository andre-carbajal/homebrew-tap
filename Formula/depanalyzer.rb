# Generated with JReleaser 1.24.0 at 2026-06-07T02:26:27.285088919Z

class Depanalyzer < Formula
  desc "Dependency Analyzer CLI"
  homepage "https://github.com/UPT-FAING-EPIS/proyecto-si784-2026-i-u1-analizador-de-dependencias"
  version "2.0.3-rc.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/UPT-FAING-EPIS/proyecto-si784-2026-i-u1-analizador-de-dependencias/releases/download/v2.0.3-rc.1/depanalyzer-macos-arm64.zip"
    sha256 "db562e858dd5e4b2fc8b7f097ef6cd6f08d46d703ab4a172a22ad625833e1461"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/depanalyzer" => "depanalyzer"
  end

  test do
    output = shell_output("#{bin}/depanalyzer --version")
    assert_match "2.0.3-rc.1", output
  end
end
