# Generated with JReleaser 1.24.0 at 2026-05-07T23:09:59.595096239Z

class Depanalyzer < Formula
  desc "Dependency Analyzer CLI"
  homepage "https://github.com/UPT-FAING-EPIS/proyecto-si784-2026-i-u1-analizador-de-dependencias"
  version "2.0.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/UPT-FAING-EPIS/proyecto-si784-2026-i-u1-analizador-de-dependencias/releases/download/v2.0.0/depanalyzer-macos-arm64.zip"
    sha256 "0116833b0f727c069b8dba4ec483c0dafcaff61d90852b0f892fe97274546f8e"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/depanalyzer" => "depanalyzer"
  end

  test do
    output = shell_output("#{bin}/depanalyzer --version")
    assert_match "2.0.0", output
  end
end
