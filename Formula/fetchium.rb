class Fetchium < Formula
  desc "Fetchium CLI — AI-native federated search engine"
  homepage "https://fetchium.com"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zuhabul/Fetchium/releases/download/v1.0.0/fetchium-darwin-arm64.tar.gz"
      sha256 "09eeedb91087475782b3513eefc4bcf4ea72cfdac5599447090e0701b448148b"
    end
    on_intel do
      url "https://github.com/zuhabul/Fetchium/releases/download/v1.0.0/fetchium-darwin-x64.tar.gz"
      sha256 "98e65421a9cf45c468bffd711e1a71a938c821b7d15899bec2a73509b0ffe395"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zuhabul/Fetchium/releases/download/v1.0.0/fetchium-linux-arm64.tar.gz"
      sha256 "8c1b8c6f2631dd2ef6820d5f6c9c5fc426578607c1df30d5212827094a439d4d"
    end
    on_intel do
      url "https://github.com/zuhabul/Fetchium/releases/download/v1.0.0/fetchium-linux-x64.tar.gz"
      sha256 "ffa211b10a55d259d7f6a89cdc8a068c567ef4d016da88adf8647b87408f27ee"
    end
  end

  def install
    bin.install "fetchium"
  end

  test do
    assert_match "fetchium 1.0.0", shell_output("#{bin}/fetchium --version")
  end
end
