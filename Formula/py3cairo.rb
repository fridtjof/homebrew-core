class Py3cairo < Formula
  desc "Python 3 bindings for the Cairo graphics library"
  homepage "https://cairographics.org/pycairo/"
  url "https://github.com/pygobject/pycairo/releases/download/v1.15.6/pycairo-1.15.6.tar.gz"
  sha256 "ad150ea637860836b66705e0513b8e59494538f0b80497ad3462051368755016"

  bottle do
    cellar :any
    sha256 "233eabdb45cf583fc810f829ab548bbb56348a59e881e79842383a349bb6de20" => :high_sierra
    sha256 "a7b13e9fc1052c70d7ebf619da0a84d6c0530a7e36e7be8805535231bd85ed66" => :sierra
    sha256 "7757b4c703d273d6e63250790433f3c1477f8b0419ee275ca9322dbafd7b0ee3" => :el_capitan
  end

  depends_on "pkg-config" => :build
  depends_on "cairo"
  depends_on "python3"

  def install
    system "python3", *Language::Python.setup_install_args(prefix)
  end

  test do
    system "python3", "-c", "import cairo; print(cairo.version)"
  end
end
