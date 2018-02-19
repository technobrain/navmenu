module Navmenu
  module Generators
    class AddGenerator < ::Rails::Generators::Base
      long_desc <<-LONGDESC
        USAGE:
          rails generator navmenu:add NAME [models]
      LONGDESC
      
      arguments: 
      option: :name, type: :string, aliases: '-n'
    end
  end
end
