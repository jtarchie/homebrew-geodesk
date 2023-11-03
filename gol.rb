class Gol < Formula
  homepage "https://docs.geodesk.com/python"
  url "https://github.com/clarisma/gol-tool/releases/download/0.1.8/gol-tool-0.1.8.zip"
  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install Dir["#{libexec}/bin/gol"]
    bin.env_script_all_files libexec/"bin", JAVA_HOME: Formula["openjdk"].opt_prefix
  end
end