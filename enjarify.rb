class Enjarify < Formula
  desc "Enjarify is a tool for translating Dalvik bytecode to equivalent Java bytecode"
  homepage "https://github.com/google/enjarify"
  url "https://github.com/google/enjarify/archive/1.0.3.tar.gz"
  sha256 "0201e277d28a1e1dec817cddfb33f222558780a3b0692761eade084b826e4516"

  depends_on :python

  def install
    # Install files
    bin.install "enjarify"
    bin.install "enjarify.sh"

    # Fix for OSX
    IO.write(bin/"enjarify.sh",
      File.open(bin/"enjarify.sh") do |f|
        f.read.gsub("readlink", "greadlink -f")
      end
    )
  end

end
