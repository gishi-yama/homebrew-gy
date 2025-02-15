cask 'font-corporate-logo-m@2' do
  version "202202"
  sha256 '44b377ad1d3e9d865639ff5d89afaa483c2472601b20264128659b45260f9b5a'

  url "https://logotype.jp/wp-content/uploads/2022/02/corpgo-m-ver2-font_#{version}.zip"
  name 'Corporate Logo Medium ver2'
  homepage 'https://logotype.jp/corporate-logo-font-dl-old-v2.html'

  # 自動展開を無効化
  container type: :naked

  postflight do
    unar_path = "/opt/homebrew/bin/unar"
    unless File.executable?(unar_path)
      opoo "unar が見つかりません。unar をインストールするか、対応した unzip を利用してください。"
      raise "unar が見つかりません"
    else
      tmp_dir = Dir.mktmpdir("corpgo_m_", "/private/tmp")
      begin
        zip_file = staged_path.join("corpgo-m-ver2-font_#{version}.zip")
        system_command unar_path, args: [
          "-quiet",
          "-e", "cp932",
          "-o", tmp_dir,
          zip_file.to_s
        ]
        # 一時ディレクトリ以下を再帰的に検索して .otf ファイルを取得
        font_file = Dir.glob(File.join(tmp_dir, "**", "*.otf")).first
        raise "OTF ファイルが見つかりません" unless font_file
  
        target = File.expand_path("~/Library/Fonts/Corporate-Logo-Medium-ver2.otf")
        # FileUtils.install は指定したパーミッションでコピーするため、
        # chown の必要がなく、ユーザー所有となります。
        FileUtils.install(font_file, target, mode: 0644)
      ensure
        FileUtils.remove_entry(tmp_dir) if tmp_dir && Dir.exist?(tmp_dir)
      end
    end
  end

end