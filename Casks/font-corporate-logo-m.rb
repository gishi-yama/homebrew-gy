cask "font-corporate-logo-m" do
  version "3"
  sha256 "e81c3286e7a58c4c01245b88cef3bd9f5a4675da12cd29f09f3953ba6ef8431a"

  url "https://logotype.jp/wp-content/uploads/2022/10/Corporate-Logo-Medium-ver#{version}.zip"
  name "Corporate Logo Medium ver3"
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
          "{{staged_path}}/Corporate-Logo-Medium-ver{{version}}.zip"
        ]
    move "extracted/**/*.otf", "Library/Fonts/Corporate-Logo-Medium-ver{{version}}.otf",
         source_glob: true, target_base: :home
    set_permissions "Library/Fonts/Corporate-Logo-Medium-ver{{version}}.otf", "0644", base: :home
  end
end
