require 'formula'

class Afsctool <Formula
  url 'http://web.me.com/brkirch/afsctool_34.zip'
  homepage 'http://web.me.com/brkirch/brkirchs_Software/afsctool/afsctool.html'
  md5 'd0f2b79676c0f3d8c22e95fcf859a05f'

  def install
    # author provides a universal binary, but it's not optimized
    ENV.fast
    system "cd afsctool_34 && " + ENV['CC'] + " " + ENV['CFLAGS'] +
    " -lz -framework CoreServices -o afsctool afsctool.c"
    bin.install 'afsctool_34/afsctool'
  end
end
