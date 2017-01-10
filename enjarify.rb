class Enjarify < Formula
  desc "Enjarify is a tool for translating Dalvik bytecode to equivalent Java bytecode. This allows Java analysis tools to analyze Android applications."
  homepage "https://github.com/google/enjarify"
  url "https://github.com/google/enjarify/archive/1.0.3.tar.gz"
  version "1.0.3"
  sha256 "0201e277d28a1e1dec817cddfb33f222558780a3b0692761eade084b826e4516"

  def install
    bin.install "enjarify.sh"
  end

end
