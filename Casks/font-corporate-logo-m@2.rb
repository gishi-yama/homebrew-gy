cask "font-corporate-logo-m@2" do
  version "202202"
  sha256 "44b377ad1d3e9d865639ff5d89afaa483c2472601b20264128659b45260f9b5a"

  url "https://logotype.jp/wp-content/uploads/2022/02/corpgo-m-ver2-font_#{version}.zip"
  name "Corporate Logo Medium ver2"
  homepage "https://logotype.jp/corporate-logo-font-dl-old-v2.html"

  depends_on formula: "unar"
  # cp932 ファイル名を含む zip のため unzip での自動展開を無効化
  container type: :naked

  postflight_steps do
    run "{{HOMEBREW_PREFIX}}/bin/unar",
        args: [
          "-quiet",
          "-e", "cp932",
          "-o", "{{staged_path}}/extracted",
          "{{staged_path}}/corpgo-m-ver2-font_{{version}}.zip"
        ]
    move "extracted/**/*.otf", "Library/Fonts/Corporate-Logo-Medium-ver2.otf",
         source_glob: true, target_base: :home
    set_permissions "Library/Fonts/Corporate-Logo-Medium-ver2.otf", "0644", base: :home
  end
end
