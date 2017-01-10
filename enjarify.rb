class Enjarify < Formula
  desc "Enjarify is a tool for translating Dalvik bytecode to equivalent Java bytecode"
  homepage "https://github.com/google/enjarify"
  url "https://github.com/google/enjarify/archive/1.0.3.tar.gz"
  sha256 "0201e277d28a1e1dec817cddfb33f222558780a3b0692761eade084b826e4516"

  depends_on :python3

  def install
    libexec.install "enjarify"
    libexec.install "enjarify.sh"
    bin.install_symlink libexec/"enjarify.sh"
  end

end
