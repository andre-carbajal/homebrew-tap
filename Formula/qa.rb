# Generated with JReleaser 1.24.0 at 2026-05-02T23:19:32.635296266Z

class Qa < Formula
  desc "Query Analyzer CLI"
  homepage "https://github.com/UPT-FAING-EPIS/proyecto-si783-2026-i-u1-analizador-de-rendimiento-de-consultas"
  version "0.1.9"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/UPT-FAING-EPIS/proyecto-si783-2026-i-u1-analizador-de-rendimiento-de-consultas/releases/download/v0.1.9/qa-macos-arm64.zip"
    sha256 "0123a2e5462a3fbcaa6d134e49c7f61ae40cbb411a646852ae3d1bd486761564"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/qa" => "qa"
  end

  test do
    output = shell_output("#{bin}/qa --version")
    assert_match "0.1.9", output
  end
end
