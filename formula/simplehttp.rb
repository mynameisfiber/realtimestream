require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Simplehttp < Formula
  homepage 'https://github.com/bitly/simplehttp'
  url 'https://github.com/bitly/simplehttp.git'
  version '0.1.3'
  sha1 '001a7fc6f68075bb74e389d7eb3d3c5c46e6f790'

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
