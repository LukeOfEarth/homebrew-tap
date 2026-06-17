class Frizzle < Formula
  desc "Local AWS EventBridge simulator for testing event-driven systems"
  homepage "https://github.com/LukeOfEarth/frizzle"
  license "MIT"
  version "0.4.0"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/LukeOfEarth/frizzle/releases/download/v0.4.0/frizzle_0.4.0_darwin_arm64.tar.gz"
      sha256 "e2df8b779c3152676b6ed2fc8e8f3f17798aa0236adaa2d5a50ad4b363a1a922"
    else
      url "https://github.com/LukeOfEarth/frizzle/releases/download/v0.4.0/frizzle_0.4.0_darwin_amd64.tar.gz"
      sha256 "56413f8e25d97e723e69524e06c053ff0fda119cbff23edde9f58c282ed30ffa"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/LukeOfEarth/frizzle/releases/download/v0.4.0/frizzle_0.4.0_linux_arm64.tar.gz"
      sha256 "55f29c2389af8a811aace4c5f4df033567e0d5bc3e9bbc3ed77029ec0bb2c339"
    else
      url "https://github.com/LukeOfEarth/frizzle/releases/download/v0.4.0/frizzle_0.4.0_linux_amd64.tar.gz"
      sha256 "18dcf7c41af5bcf004b37cfbacbb92ff0cde0c5f7c236baa325e8a55ec58a9cb"
    end
  end

  def install
    bin.install "frizzle"
  end

  test do
    assert_match "frizzle", shell_output("#{bin}/frizzle --help")
  end
end
