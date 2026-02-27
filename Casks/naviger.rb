# Generated with JReleaser 1.22.0 at 2026-02-27T00:48:52.53197046Z

cask "naviger" do
  desc "Modern Minecraft Server Manager"
  homepage "https://github.com/andre-carbajal/Naviger"
  url "https://github.com/andre-carbajal/Naviger/releases/download/v1.12.1/Naviger-1.12.1-macos.pkg",
      verified: "github.com"
  version "1.12.1"
  sha256 "00c832556713e15f5ec3c2f76369bcd75fe9dac34e99332e83b0a28928384e46"
  name "Naviger"
  appcast https://github.com/andre-carbajal/Naviger/releases.atom
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
