require 'formula'

class Pubsubclient < Formula
  homepage 'https://github.com/bitly/simplehttp'
  url 'https://github.com/bitly/simplehttp.git'
  version '1.0'
  sha1 '897ffd61c459b35ff91ddfc79199508fa2e2d777'

  depends_on "simplehttp"

  def install
    cd "pubsubclient" do
      ENV["TARGET"] = "#{prefix}"
      ENV["LIBEVENT"] = "#{HOMEBREW_CELLAR}/libevent14/1.4.14b"
      system "make", "libpubsubclient.a"
      system "make install" # if this fails, try separate make/make install steps
    end
  end
end
require 'formula'
