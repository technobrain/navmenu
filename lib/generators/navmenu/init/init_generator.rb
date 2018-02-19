module Navmenu
  module Generators
    class InitGenerator < ::Rails::Generators::Base
      option :template, type: :string, aliases: '-t'
      long_desc <<-LONGDESC
        USAGE:
          rails generator NAME [--template] : メニューを生成します．

        OPTIONS:
          -t [--template] : テンプレートファイルを指定します
      LONGDESC


      def self.source_root
        @source_root
      end

      def create_init_file
        # メニューのテンプレートを作成する．
        dir = "#{Rails.root}/app/views/shared"
        # sharedフォルダを作成する
        FileUtils.mkdir_p(dir) unless File.directory?(dir)
        # templateファイルをコピーする(optionで指定があればそれを使う)
        template = options[:template]
      end
    end
  end
end
