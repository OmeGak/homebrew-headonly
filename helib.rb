require "formula"

class Helib < Formula
  homepage "https://github.com/shaih/HElib"
  head "https://github.com/shaih/HElib.git"

  depends_on "ntl"

  def install
    cflags = "-g -O2  -Wfatal-errors -Wshadow -Wall -I/usr/local/include -std=c++11 -lstdc++"
    system "make -C src/ CFLAGS='#{cflags}'"
    system "mkdir #{lib}"
    system "cp src/fhe.a #{lib}/fhe.a"
    system "mkdir #{include}"
    system "find . -name '*.h' -exec cp {} #{include} \\;"
  end
end
