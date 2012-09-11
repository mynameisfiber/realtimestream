require 'formula'

class Simplehttp < Formula
  homepage 'https://github.com/bitly/simplehttp'
  url 'https://github.com/bitly/simplehttp.git'
  version '0.1.3'
  sha1 '897ffd61c459b35ff91ddfc79199508fa2e2d777'

  depends_on "libevent14"
  depends_on "json-c"

  def install
    cd "simplehttp" do
      ENV["TARGET"] = "#{prefix}"
      ENV["LIBEVENT"] = "#{HOMEBREW_CELLAR}/libevent14/1.4.14b"
      system "make", "libsimplehttp.a"
      system "make install" # if this fails, try separate make/make install steps
    end
  end
end
