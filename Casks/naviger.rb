# Generated with JReleaser 1.22.0 at 2026-02-27T02:23:18.718625669Z

cask "naviger" do
  desc "Modern Minecraft Server Manager"
  homepage "https://github.com/andre-carbajal/Naviger"
  url "https://github.com/andre-carbajal/Naviger/releases/download/v1.12.1/Naviger-1.12.1-macos.pkg",
      verified: "github.com"
  version "1.12.1"
  sha256 "929233a229f947ff0757c980b5e064e60fde60c9751f02fe44f4d360fb63dbb7"
  name "Naviger"
  auto_updates true


  pkg "Naviger-1.12.1-macos.pkg"
  uninstall pkgutil: [
    "com.naviger.server",
  ]
  zap trash: [
    "/Applications/Naviger.app",
    "/usr/local/bin/naviger-cli",
    "/etc/paths.d/naviger",
    "~/Library/Logs/Naviger",
    "~/Library/Application Support/Naviger",
  ]
end
