# Generated with JReleaser 1.24.0 at 2026-05-03T04:03:07.56315169Z

class Qa < Formula
  desc "Query Analyzer CLI"
  homepage "https://github.com/UPT-FAING-EPIS/proyecto-si783-2026-i-u1-analizador-de-rendimiento-de-consultas"
  version "0.1.16"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/UPT-FAING-EPIS/proyecto-si783-2026-i-u1-analizador-de-rendimiento-de-consultas/releases/download/v0.1.16/qa-macos-arm64.zip"
    sha256 "fd8616d105ac133134371953dfa95ba3e6e12443e2e6b7405430acd2fd938584"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/qa" => "qa"
  end

  test do
    output = shell_output("#{bin}/qa --version")
    assert_match "0.1.16", output
  end
end
