# Generated with JReleaser 1.24.0 at 2026-05-03T04:56:42.626081752Z

class Qa < Formula
  desc "Query Analyzer CLI"
  homepage "https://github.com/UPT-FAING-EPIS/proyecto-si783-2026-i-u1-analizador-de-rendimiento-de-consultas"
  version "0.1.17"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/UPT-FAING-EPIS/proyecto-si783-2026-i-u1-analizador-de-rendimiento-de-consultas/releases/download/v0.1.17/qa-macos-arm64.zip"
    sha256 "f47749c6e2cc80afc16332c52e27a546063136299229c7a86a6e6d10a2bddc0a"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/qa" => "qa"
  end

  test do
    output = shell_output("#{bin}/qa --version")
    assert_match "0.1.17", output
  end
end
