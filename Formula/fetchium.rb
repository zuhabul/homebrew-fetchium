class Fetchium < Formula
  desc "Fetchium CLI — AI-native federated search engine"
  homepage "https://fetchium.com"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zuhabul/Fetchium/releases/download/v1.0.0/fetchium-darwin-arm64.tar.gz"
      sha256 "f01c4903f65bce77cf9cb6f24e421e33343ba9570cfb87a82822ea795cff4075"
    end
    on_intel do
      url "https://github.com/zuhabul/Fetchium/releases/download/v1.0.0/fetchium-darwin-x64.tar.gz"
      sha256 "438be1ee223f687c3558932e44b9abe873c2fab99fa78c4e0e1525aad0ed28aa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zuhabul/Fetchium/releases/download/v1.0.0/fetchium-linux-arm64.tar.gz"
      sha256 "dc5f663111df51e0d448059053e46098682253e5d3024f20aa7c1dbc4ea93cb2"
    end
    on_intel do
      url "https://github.com/zuhabul/Fetchium/releases/download/v1.0.0/fetchium-linux-x64.tar.gz"
      sha256 "473ee0323653665dcee878ce7d9450e2ab8234ba050e8c0da179aded9a183c63"
    end
  end

  def install
    bin.install "fetchium"
  end

  test do
    assert_match "fetchium 1.0.0", shell_output("#{bin}/fetchium --version")
  end
end
