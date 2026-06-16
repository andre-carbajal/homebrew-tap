# Generated with JReleaser 1.24.0 at 2026-06-16T17:29:30.767556417Z

class Qa < Formula
  desc "Query Analyzer CLI"
  homepage "https://github.com/UPT-FAING-EPIS/proyecto-si783-2026-i-u1-analizador-de-rendimiento-de-consultas"
  version "2.2.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/UPT-FAING-EPIS/proyecto-si783-2026-i-u1-analizador-de-rendimiento-de-consultas/releases/download/v2.2.0/qa-macos-arm64.zip"
    sha256 "2ef595b09960f787271fa1d641b7cba05d1571e6fff3d0a5b0083f455eebda3a"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/qa" => "qa"
  end

  test do
    output = shell_output("#{bin}/qa --version")
    assert_match "2.2.0", output
  end
end
