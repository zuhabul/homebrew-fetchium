class Fetchium < Formula
  desc "Fetchium CLI — AI-native federated search engine"
  homepage "https://fetchium.com"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zuhabul/Fetchium/releases/download/v1.0.0/fetchium-darwin-arm64.tar.gz"
      sha256 "67511b55d93d05b3280842c0190e602e803bfae62cf0d0eb8f9713ed534d47e2"
    end
    on_intel do
      url "https://github.com/zuhabul/Fetchium/releases/download/v1.0.0/fetchium-darwin-x64.tar.gz"
      sha256 "063b463f8c6ce2e9042f0db2bc025b78aea088b804fc5c7811b95f70fcf50258"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zuhabul/Fetchium/releases/download/v1.0.0/fetchium-linux-arm64.tar.gz"
      sha256 "1b3db73d4a6428b17ab4b3f4e76483ce30083dd61ce87841bdd1cc785219a4f2"
    end
    on_intel do
      url "https://github.com/zuhabul/Fetchium/releases/download/v1.0.0/fetchium-linux-x64.tar.gz"
      sha256 "c939d2559dd16d30b8b2ceb8d49f5916f9c9b3de496bb4ab95c322d229acc647"
    end
  end

  def install
    bin.install "fetchium"
  end

  test do
    assert_match "fetchium 1.0.0", shell_output("#{bin}/fetchium --version")
  end
end
