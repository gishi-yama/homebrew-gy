cask "font-corporate-logo-b" do
  version "3"
  sha256 "0c964fd694a993505c0245012b1aa8e9ec0c24b765e27c548a13a8365bbac784"

  url "https://logotype.jp/wp-content/uploads/2022/10/Corporate-Logo-Bold-ver#{version}.zip"
  name "Corporate Logo Bold ver3"
  homepage "https://logotype.jp/corporate-logo-font-dl.html"

  depends_on formula: "unar"
  # cp932 ファイル名を含む zip のため unzip での自動展開を無効化
  container type: :naked

  postflight_steps do
    run "{{HOMEBREW_PREFIX}}/bin/unar",
        args: [
          "-quiet",
          "-e", "cp932",
          "-o", "{{staged_path}}/extracted",
          "{{staged_path}}/Corporate-Logo-Bold-ver{{version}}.zip"
        ]
    move "extracted/**/*.otf", "Library/Fonts/Corporate-Logo-Bold-ver{{version}}.otf",
         source_glob: true, target_base: :home
    set_permissions "Library/Fonts/Corporate-Logo-Bold-ver{{version}}.otf", "0644", base: :home
  end
end
