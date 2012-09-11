require 'formula'

class Ps_to_http < Formula
  homepage 'https://github.com/bitly/simplehttp'
  url 'https://github.com/bitly/simplehttp.git'
  version '0.5.4'
  sha1 '897ffd61c459b35ff91ddfc79199508fa2e2d777'

  depends_on "simplehttp"
  depends_on "pubsubclient"

  def install
    cd "ps_to_http" do
      ENV["TARGET"] = "#{prefix}"
      ENV["LIBEVENT"] = "#{HOMEBREW_CELLAR}/libevent14/1.4.14b"
      system "make", "ps_to_http"
      system "make install" # if this fails, try separate make/make install steps
    end
  end

  def test
    system %Q!test "$( ps_to_http--version )" == "Version: #{version}"!
  end
end
