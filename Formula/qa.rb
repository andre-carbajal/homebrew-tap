# Generated with JReleaser 1.24.0 at 2026-05-09T16:19:26.506033624Z

class Qa < Formula
  desc "Query Analyzer CLI"
  homepage "https://github.com/UPT-FAING-EPIS/proyecto-si783-2026-i-u1-analizador-de-rendimiento-de-consultas"
  version "2.0.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/UPT-FAING-EPIS/proyecto-si783-2026-i-u1-analizador-de-rendimiento-de-consultas/releases/download/v2.0.1/qa-macos-arm64.zip"
    sha256 "0bb410e4c989ab425b6c72f8ad1baf9192625a2b4b806d9f590a2240049f88ef"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/qa" => "qa"
  end

  test do
    output = shell_output("#{bin}/qa --version")
    assert_match "2.0.1", output
  end
end
