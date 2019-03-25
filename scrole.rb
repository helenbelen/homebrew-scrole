
class Scrole < Formula
  desc "Command line tool for managing scrip variables"
  homepage "https://git.target.com/HelenAgha/scrole-project"
  url "https://github.com/helenbelen/scrole/raw/master/scrole-1.0.tar.gz"
  sha256 "772ce986bff91ec927eae834ab061e593f87036b79f6ad0158befc473dead226"
  version "1.0"
  bottle :unneeded

  def install
    bin.install "process_script.py" => "scrole"
  end

  test do
    assert_match(/usage:/,%x('#{bin}/scrole'),"Scrole is not working")    
  end
end
