cask 'font-corporate-logo-b' do
  version "202202"
  sha256 'e4725f153241022af54b1dba3a4cbc281bcd4c746f8a353baaaab70bd32e9afa'

  url "https://logotype.jp/wp-content/uploads/2022/02/corpgo-b-ver2-font_#{version}.zip"
  name 'Corporate Logo Bold'
  homepage 'https://logotype.jp/corporate-logo-font-dl-old-v2.html'

  # 自動展開を無効化
  container type: :naked

  postflight do
    # PATH を手動で変更する
    ENV["PATH"] = "/opt/homebrew/bin:#{ENV["PATH"]}"
  
    unless system("command -v unar > /dev/null 2>&1")
      opoo "unar が見つかりません。unar をインストールするか、対応した unzip を利用してください。"
    else
      tmp_dir = Dir.mktmpdir("corpgo_b_", "/private/tmp")
      zip_file = staged_path.join("corpgo-b-ver2-font_#{version}.zip")
      system_command "unar", args: [
        "-quiet",
        "-e", "cp932",
        "-o", tmp_dir,
        zip_file.to_s
      ]
      # 展開先のどこかにある .otf ファイルを再帰的に検索する
      font_file = Dir.glob(File.join(tmp_dir, "**", "*.otf")).first
      raise "OTF ファイルが見つかりません" unless font_file
  
      target = File.expand_path("~/Library/Fonts/Corporate-Logo-Bold-ver2.otf")
      FileUtils.cp(font_file, target)
      FileUtils.remove_entry(tmp_dir) if Dir.exist?(tmp_dir)
    end
  end

  uninstall delete: "~/Library/Fonts/Corporate-Logo-Bold-ver2.otf"
end