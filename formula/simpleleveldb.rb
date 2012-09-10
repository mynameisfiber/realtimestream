require 'formula'

class Simpleleveldb < Formula
  homepage 'https://github.com/bitly/simplehttp'
  url 'https://github.com/bitly/simplehttp.git'
  version '0.9.2'
  sha1 '001a7fc6f68075bb74e389d7eb3d3c5c46e6f790'

  depends_on "simplehttp"
  depends_on "leveldb"

  def install
    cd "simpleleveldb" do
      ENV["TARGET"] = "#{prefix}"
      ENV["LIBEVENT"] = "#{HOMEBREW_CELLAR}/libevent14/1.4.14b"
      system "make", "simpleleveldb"
      system "make install" # if this fails, try separate make/make install steps
    end
  end

  def test
    system %Q!test "$( simpleleveldb --version )" == "Version: #{version}"!
  end
end
