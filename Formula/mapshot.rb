class Mapshot < Formula
  VERSION = "0.0.14"

  desc "Factorio map viewer"
  homepage "https://mods.factorio.com/mod/mapshot"
  version VERSION
  url "https://github.com/Palats/mapshot/releases/download/#{VERSION}/mapshot-darwin-arm64"
  sha256 "c203bceb2f6bd0ef60b6d5a3a170617f2bb883c6afafc0ef9aee824e496ae444"

  def install
    bin.mkpath
    system "install -m755 mapshot-darwin-arm64 #{bin}/mapshot"
  end

  test do
    system "false"
  end
end
