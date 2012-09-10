require 'formula'

class Simplequeue < Formula
  homepage 'https://github.com/bitly/simplehttp'
  url 'https://github.com/bitly/simplehttp.git'
  version '1.3.1'
  sha1 '001a7fc6f68075bb74e389d7eb3d3c5c46e6f790'

  depends_on "simplehttp"

  def install
    cd "simplequeue" do
      ENV["TARGET"] = "#{prefix}"
      ENV["LIBEVENT"] = "#{HOMEBREW_CELLAR}/libevent14/1.4.14b"
      system "make", "simplequeue"
      system "make install" # if this fails, try separate make/make install steps
    end
  end

  def test
    system %Q!test "$( simplequeue --version )" == "Version: #{version}"!
  end
end
