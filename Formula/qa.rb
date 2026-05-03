# Generated with JReleaser 1.24.0 at 2026-05-03T17:18:06.851711714Z

class Qa < Formula
  desc "Query Analyzer CLI"
  homepage "https://github.com/UPT-FAING-EPIS/proyecto-si783-2026-i-u1-analizador-de-rendimiento-de-consultas"
  version "0.1.19"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/UPT-FAING-EPIS/proyecto-si783-2026-i-u1-analizador-de-rendimiento-de-consultas/releases/download/v0.1.19/qa-macos-arm64.zip"
    sha256 "283d939325a8bebc251bc052a8fbd509535329788234d5fb6f6b98e9b9a602b8"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/qa" => "qa"
  end

  test do
    output = shell_output("#{bin}/qa --version")
    assert_match "0.1.19", output
  end
end
