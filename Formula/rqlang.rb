class Rqlang < Formula
  desc "Manage and execute HTTP requests defined in .rq files"
  homepage "https://github.com/rqlang/rq"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/rqlang/rq/releases/download/0.8.1/rq-macos-aarch64"
      sha256 "13e74d52012d2813adf9412a2c3ef63c48fda9d9c98af0b3749f550adeeca06a"
    end
    on_intel do
      url "https://github.com/rqlang/rq/releases/download/0.8.1/rq-macos-x86_64"
      sha256 "a21f20ef8a4c372783ba3c7853fa53ddd81669425537cacd847bbe90546d6cee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rqlang/rq/releases/download/0.8.1/rq-linux-aarch64"
      sha256 "c97bf9a17abec48e6d5a639b981cb8f3ea6f42a1d2861ae640d95270c3276e77"
    end
    on_intel do
      url "https://github.com/rqlang/rq/releases/download/0.8.1/rq-linux-x86_64"
      sha256 "8a562f0106d68035e91cefa6deb8e6d8022f987d0c5d7100fc0a21120cc63299"
    end
  end

  def install
    bin.install Dir["rq-*"].first => "rq"
    chmod 0755, bin/"rq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rq --version")
  end
end
