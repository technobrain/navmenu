require "navmenu/version"

module Navmenu
  class Railtie < ::Rails::Railtie
    generators do
      #::Rails::Generators.hidden_namespaces.reject! do |namespace|
      #  namespace.to_s.start_with?('navmenu')
      #end
    end
  end
end
