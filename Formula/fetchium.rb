class Fetchium < Formula
  desc "Fetchium CLI — AI-native federated search engine"
  homepage "https://fetchium.com"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zuhabul/Fetchium/releases/download/v1.0.0/fetchium-darwin-arm64.tar.gz"
      sha256 "c11300aeb1ad20d8a9a4305cbf69a51aa893c21099d300b12c3d64dd35d524bc"
    end
    on_intel do
      url "https://github.com/zuhabul/Fetchium/releases/download/v1.0.0/fetchium-darwin-x64.tar.gz"
      sha256 "56969d4cca33e61af96d645a13f94403f0624c58e97bac0e2c99f3dda7561960"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zuhabul/Fetchium/releases/download/v1.0.0/fetchium-linux-arm64.tar.gz"
      sha256 "8a234711cd83de76626e5b11b8ca135a4d954033d737a137a30c457e71e9603b"
    end
    on_intel do
      url "https://github.com/zuhabul/Fetchium/releases/download/v1.0.0/fetchium-linux-x64.tar.gz"
      sha256 "9aee9020a3d81a494f33b0f7f0846b4451e25ffb55fcf63f49806b92c2370115"
    end
  end

  def install
    bin.install "fetchium"
  end

  test do
    assert_match "fetchium 1.0.0", shell_output("#{bin}/fetchium --version")
  end
end
