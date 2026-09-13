cask "font-corporate-logo-b@2" do
  version "202202"
  sha256 "e4725f153241022af54b1dba3a4cbc281bcd4c746f8a353baaaab70bd32e9afa"

  url "https://logotype.jp/wp-content/uploads/2022/02/corpgo-b-ver2-font_#{version}.zip"
  name "Corporate Logo Bold ver2"
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
          "{{staged_path}}/corpgo-b-ver2-font_{{version}}.zip"
        ]
    move "extracted/**/*.otf", "Library/Fonts/Corporate-Logo-Bold-ver2.otf",
         source_glob: true, target_base: :home
    set_permissions "Library/Fonts/Corporate-Logo-Bold-ver2.otf", "0644", base: :home
  end
end
