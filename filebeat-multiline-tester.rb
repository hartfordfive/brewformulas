class FilebeatMultilineTester < Formula
  desc "Test multi-line patterns for filebeat configurations"
  homepage "https://github.com/hartfordfive/filebeat-multiline-tester"
  url "https://github.com/hartfordfive/filebeat-multiline-tester/archive/0.1.2.tar.gz"
  version "0.1.2"
  sha256 "56181bb6a33b6ef29f8d110490628ae132d150b7f8b6f909e5dab55395671fca"
  head "https://github.com/hartfordfive/filebeat-multiline-tester.git"

  depends_on "go" => :build

  def install
    cd "src/github.com/hartfordfive/filebeat-multiline-tester" do
      system "make", "build"
      cd "bin" do
        bin.install "filebeat-multiline-tester"
      end
    end
  end

  test do
    system "#{bin}/filebeat-multiline-tester", "-v"
  end
end