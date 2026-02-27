# Generated with JReleaser 1.22.0 at 2026-02-27T01:06:25.0959783Z

cask "naviger" do
  desc "Modern Minecraft Server Manager"
  homepage "https://github.com/andre-carbajal/Naviger"
  url "https://github.com/andre-carbajal/Naviger/releases/download/v1.12.1/Naviger-1.12.1-macos.pkg",
      verified: "github.com"
  version "1.12.1"
  sha256 "07e4da213b3fbc2d0a50501a626a76d2a6574dcec78e4b04a546a12e0e8c16f5"
  name "Naviger"
  auto_updates true


  pkg "Naviger-1.12.1-macos.pkg"
  app "Naviger.app"
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
