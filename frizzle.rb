class Frizzle < Formula
  desc "Local AWS EventBridge simulator for testing event-driven systems"
  homepage "https://github.com/LukeOfEarth/frizzle"
  license "MIT"
  version "0.5.1"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/LukeOfEarth/frizzle/releases/download/v0.5.1/frizzle_0.5.1_darwin_arm64.tar.gz"
      sha256 "223b118252449e510a4ed69e8200299ab04b209fed96cc15f0e27e3c78209add"
    else
      url "https://github.com/LukeOfEarth/frizzle/releases/download/v0.5.1/frizzle_0.5.1_darwin_amd64.tar.gz"
      sha256 "5a27801805f8f6ff1f42ad42bffe9ceff9755758ac3148b4633f2d27d4a25453"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/LukeOfEarth/frizzle/releases/download/v0.5.1/frizzle_0.5.1_linux_arm64.tar.gz"
      sha256 "ba459faaec813ac77a119cd0482b2596ebcee37f56c1b8f81edd4b67db5cdcad"
    else
      url "https://github.com/LukeOfEarth/frizzle/releases/download/v0.5.1/frizzle_0.5.1_linux_amd64.tar.gz"
      sha256 "8a80a50bfceb2565ff457b41b79bab9509cff2fa02eb000bbeea7882ff90a69d"
    end
  end

  def install
    bin.install "frizzle"
  end

  test do
    assert_match "frizzle", shell_output("#{bin}/frizzle --help")
  end
end
