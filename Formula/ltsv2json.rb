class Ltsv2json < Formula
  desc "Command to convert from LTSV to JSON"
  homepage "https://github.com/yuya-takeyama/ltsv2json"
  url "https://github.com/yuya-takeyama/ltsv2json/archive/v0.1.1.tar.gz"
  version "0.1.1"
  sha256 "137be2fc5921dd34fbcf51354c6f585b75129cea53a33af9a01b87c8952d3e6a"

  depends_on "go" => :build

  def install
    ENV['GOPATH'] = buildpath
    system("go get -d")
    system("go build -o #{name}")
    system("install -m 755 -d #{prefix}/bin")
    system("install -m 755 #{name} #{prefix}/bin")
  end

  test do
    system %@[ "$(echo 1:2 | ltsv2json)" = '{"1":"2"}' ]@
  end
end
