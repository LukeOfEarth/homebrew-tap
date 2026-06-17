class Frizzle < Formula
  desc "Local AWS EventBridge simulator for testing event-driven systems"
  homepage "https://github.com/LukeOfEarth/frizzle"
  license "MIT"
  version "0.3.2"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/LukeOfEarth/frizzle/releases/download/v0.3.2/frizzle_0.3.2_darwin_arm64.tar.gz"
      sha256 "c8577813941bedf6d73218e3a9028da8cf8fdeeadf45d3856208d2ee2bb4dfa9"
    else
      url "https://github.com/LukeOfEarth/frizzle/releases/download/v0.3.2/frizzle_0.3.2_darwin_amd64.tar.gz"
      sha256 "8e9447a1ea1827f9034ab4bc635036949de704af0e439054b97a7b9bcbbd01bb"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/LukeOfEarth/frizzle/releases/download/v0.3.2/frizzle_0.3.2_linux_arm64.tar.gz"
      sha256 "881972b4b957e81a6dc2f000c024327ea7791dc2832f192e75da984468d0eb90"
    else
      url "https://github.com/LukeOfEarth/frizzle/releases/download/v0.3.2/frizzle_0.3.2_linux_amd64.tar.gz"
      sha256 "2cdda3447c3251b7f8dc2a9551978434300bc48337c0cfa0435cfbb4916948bc"
    end
  end

  def install
    bin.install "frizzle"
  end

  test do
    assert_match "frizzle", shell_output("#{bin}/frizzle --help")
  end
end
