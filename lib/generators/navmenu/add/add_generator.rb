module Navmenu
  module Generators
    class AddGenerator < ::Rails::Generators::Base
      argument :models, type: :array, required: true
      class_option :namespace, type: :string, aliases: '-n'
      class_option :template, type: :string, aliases: '-t'

      desc <<-LONGDESC
        USAGE:
          rails generator navmenu:add [MODELS] [--options]

        OPTIONS:
          -n [--namespace]  # ネームスペースを付与します
          -t [--template]   # テンプレートファイルを指定します
      LONGDESC

      def self.source_root(path = nil)
        @source_root ||= File.expand_path(File.join(File.dirname(__FILE__), 'templates'))
      end

      def create_items
        raise StandardError unless File.directory?(shared_dir)
        models&.each do |item|
          next if item.blank?
          copy_file template_file, "#{shared_dir}/_nav_item_#{item.downcase.pluralize}.erb"
        end
      rescue StandardError => e
        puts e.message
        puts "namespace #{options[:namespace]} doesn't exist"
      end

      private
      def shared_dir
        base_dir = "#{Rails.root}/app/views/shared"
        options[:namespace] ? File.join(base_dir, options[:namespace]) : base_dir
      end

      def template_file
        options[:template] ? File.expand_path(options[:template]) : "_nav_item.tmpl.erb"
      end
    end
  end
end
