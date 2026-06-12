# Generated with JReleaser 1.24.0 at 2026-06-12T04:45:04.724977655Z

class Qa < Formula
  desc "Query Analyzer CLI"
  homepage "https://github.com/UPT-FAING-EPIS/proyecto-si783-2026-i-u1-analizador-de-rendimiento-de-consultas"
  version "2.1.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/UPT-FAING-EPIS/proyecto-si783-2026-i-u1-analizador-de-rendimiento-de-consultas/releases/download/v2.1.0/qa-macos-arm64.zip"
    sha256 "384053263217550f6f4358d455d96107bea5fcdb9c03b0c5c8f2a3a2817de42a"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/qa" => "qa"
  end

  test do
    output = shell_output("#{bin}/qa --version")
    assert_match "2.1.0", output
  end
end
