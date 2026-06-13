# Generated with JReleaser 1.24.0 at 2026-06-13T21:12:05.569740815Z

class Qa < Formula
  desc "Query Analyzer CLI"
  homepage "https://github.com/UPT-FAING-EPIS/proyecto-si783-2026-i-u1-analizador-de-rendimiento-de-consultas"
  version "2.1.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/UPT-FAING-EPIS/proyecto-si783-2026-i-u1-analizador-de-rendimiento-de-consultas/releases/download/v2.1.1/qa-macos-arm64.zip"
    sha256 "8c5d9dace447b0417203a8bb40fd66c753679c8aacdacb0a49df099e13fcf9d2"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/qa" => "qa"
  end

  test do
    output = shell_output("#{bin}/qa --version")
    assert_match "2.1.1", output
  end
end
