module Navmenu
  module Generators
    class InitGenerator < ::Rails::Generators::Base
      option :template, type: :string, aliases: '-t'
      option :name, type: :string, aliases: '-n'
      long_desc <<-LONGDESC
        USAGE:
          rails generator NAME [--template] : メニューを生成します．

        OPTIONS:
          -t [--template] : テンプレートファイルを指定します
      LONGDESC


      def self.source_root
        @source_root ||= File.expand_path(File.join(File.dirname(__FILE__), 'templates'))
      end

      def shared_dir
        option[:name] ? "app/views/shared/#{option[:name]}" : "app/views/shared/"
      end

      def template_file
        option[:template] ? File.expand_path(option[:template]) : "_nav_menu.erb"
      end

      def create_init_file
        # メニューのテンプレートを作成する．
        dir = "#{Rails.root}/app/views/shared"
        FileUtils.mkdir_p(dir) unless File.directory?(dir)
        # templateファイルをコピーする
        copy_file template_file, "#{shard_dir}/_nav_menu.erb"
      end
    end
  end
end
