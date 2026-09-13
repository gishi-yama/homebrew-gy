cask 'font-corporate-logo-m' do
  version "3"
  sha256 'e81c3286e7a58c4c01245b88cef3bd9f5a4675da12cd29f09f3953ba6ef8431a'

  url "https://logotype.jp/wp-content/uploads/2022/10/Corporate-Logo-Medium-ver#{version}.zip"
  name 'Corporate Logo Medium ver3'
  homepage 'https://logotype.jp/corporate-logo-font-dl.html'

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
        zip_file = staged_path.join("Corporate-Logo-Medium-ver#{version}.zip")
        system_command unar_path, args: [
          "-quiet",
          "-e", "cp932",
          "-o", tmp_dir,
          zip_file.to_s
        ]
        # 一時ディレクトリ以下を再帰的に検索して .otf ファイルを取得
        font_file = Dir.glob(File.join(tmp_dir, "**", "*.otf")).first
        raise "OTF ファイルが見つかりません" unless font_file
  
        target = File.expand_path("~/Library/Fonts/Corporate-Logo-Medium-ver3.otf")
        # FileUtils.install は指定したパーミッションでコピーするため、
        # chown の必要がなく、ユーザー所有となります。
        FileUtils.install(font_file, target, mode: 0644)
      ensure
        FileUtils.remove_entry(tmp_dir) if tmp_dir && Dir.exist?(tmp_dir)
      end
    end
  end

end