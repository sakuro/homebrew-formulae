class Slib < Formula
  VERSION = "3b5"

  desc "The SLIB Portable Scheme Library"
  homepage "https://people.csail.mit.edu/jaffer/SLIB"
  url "http://groups.csail.mit.edu/mac/ftpdir/scm/slib-#{VERSION}.zip"
  version VERSION
  sha256 "f8b64a9820c2ccbdb263a0cb7bcf4caadce0857fdf4e2f52111ca33b4a131760"

  def install
    system "./configure --prefix=#{prefix}"
    system "make install"
  end

  test do
    system %@[ "$(slib --version)" = "slib #{VERSION}" ]@
  end

  def caveats
    <<~CABEATS
    To use SLIB, set the environment variable SCHEME_LIBRARY_PATH as follows:

    export SCHEME_LIBRARY_PATH=$(brew --prefix slib)/lib/slib
    CABEATS
  end
end
