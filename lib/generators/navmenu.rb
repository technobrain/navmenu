require 'rails/generators/named_base'

module Navmenu
  class Base < ::Rails::generators::NamedBase
    def self.source_root(path = nil)
      @source_root ||= File.expand_path(File.join(File.dirname(__FILE__), 'navmemu', generator_name, 'templates'))
    end
  end
end
