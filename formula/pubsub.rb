require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Pubsub < Formula
  homepage 'https://github.com/bitly/simplehttp'
  url 'https://github.com/bitly/simplehttp.git'
  version '1.2'
  sha1 '001a7fc6f68075bb74e389d7eb3d3c5c46e6f790'

  depends_on "simplehttp"
  depends_on "openssl"

  def install
    cd "pubsub" do
      ENV["TARGET"] = "#{prefix}"
      ENV["LIBEVENT"] = "#{HOMEBREW_CELLAR}/libevent14/1.4.14b"
      system "make", "pubsub"
      system "make install" # if this fails, try separate make/make install steps
    end
  end

  def test
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test simplehttp`.
    system %Q!test "$( pubsub --version )" == "Version: #{version}"!
  end
end
