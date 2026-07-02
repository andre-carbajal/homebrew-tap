# Generated with JReleaser 1.25.0 at 2026-07-02T22:36:58.561830544Z

class Qa < Formula
  desc "Query Analyzer CLI"
  homepage "https://github.com/UPT-FAING-EPIS/proyecto-si783-2026-i-u1-analizador-de-rendimiento-de-consultas"
  version "2.3.3"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/UPT-FAING-EPIS/proyecto-si783-2026-i-u1-analizador-de-rendimiento-de-consultas/releases/download/v2.3.3/qa-macos-arm64.zip"
    sha256 "d70c605bbd7a6378717535c5cc508772930d3e2bb0db375eaaefd95c951877c1"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/qa" => "qa"
  end

  test do
    output = shell_output("#{bin}/qa --version")
    assert_match "2.3.3", output
  end
end
