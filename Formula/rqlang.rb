class Rqlang < Formula
  desc "Manage and execute HTTP requests defined in .rq files"
  homepage "https://github.com/rqlang/rq"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/rqlang/rq/releases/download/0.8.0/rq-macos-aarch64"
      sha256 "a526cc783ade4db71949ca287d0223415b42d934afc5deb8a74b85f415f825ec"
    end
    on_intel do
      url "https://github.com/rqlang/rq/releases/download/0.8.0/rq-macos-x86_64"
      sha256 "60c2d3a4e6f672229566eb530ff8288ba152dddfc185787507bac0408b214b72"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rqlang/rq/releases/download/0.8.0/rq-linux-aarch64"
      sha256 "23ee5161b428af60116acdee3ec22b640728ab3611587812fd4143a769ee39b1"
    end
    on_intel do
      url "https://github.com/rqlang/rq/releases/download/0.8.0/rq-linux-x86_64"
      sha256 "0c73922eb8d44e27be2f5431759f16cf83acc95b4717789456054b7161fe207f"
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
