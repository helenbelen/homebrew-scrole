
class Scrole < Formula

  desc "Command line tool for managing scrip variables"
  homepage "https://git.target.com/HelenAgha/scrole-project"
  url "https://git.target.com/HelenAgha/scrole-project.git", :using => :git
  sha256 "3f85c78341ce3dfca491c4a94941d428d8d50a63f57c896208cc1311641bf794"
  version "1.0"
  depends on "python@2"

  def install

    libexec.install "scroll-script/process_script.py" => "scroll"
    bin.write_exec_script (libexec/"scrole")
  end

  test do

    assert_equal %x('#{bin}/scrole'),"usage: my_file.py -f [script_file]  (optional: -a or --all)"

  end
end
