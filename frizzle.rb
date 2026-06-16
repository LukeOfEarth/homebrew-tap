class Frizzle < Formula
  desc "Local AWS EventBridge simulator for testing event-driven systems"
  homepage "https://github.com/LukeOfEarth/frizzle"
  url "https://github.com/LukeOfEarth/frizzle/releases/download/v0.3.0/frizzle_0.3.0_#{OS.kernel_name.downcase}_#{Hardware::CPU.arch}.tar.gz"
  license "MIT"
  version "0.3.0"

  if OS.mac?
    if Hardware::CPU.arm?
      sha256 "5230af9cf221bad1d88b82dd1ab0d62fa285c52d86f313fbd243e0f1e85e7aa0"
    else
      sha256 "710d98754422ef4ea21cfe2d21458290e6f829302275d6d242756e51fbf8ff56"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      sha256 "959a17e9b9f5d39dbb65c6c26cde1530e57401e13c21351de7b681c08b02279c"
    else
      sha256 "dc963b96e56493d6b47448720900f0234b51e146881bc963944e651fd754cd1f"
    end
  end

  def install
    bin.install "frizzle"
  end

  test do
    assert_match "frizzle", shell_output("#{bin}/frizzle --help")
  end
end
