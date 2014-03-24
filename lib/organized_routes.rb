module OrganizedRoutes
  @routes = {}

  # use load so we pick up any changes
  def self.load_routes
    Dir["#{Rails.root}/config/routes/**/*.rb"].each {|file| load file}
  end

  def self.define(key, &block)
    @routes[key] = block
  end

  def self.draw(key, context)
    context.instance_exec &@routes[key] || raise("Unknown routes: #{key}")
  end
end

module ActionDispatch::Routing::Mapper::Base
  # TODO: find a way to have this happen automatically each time routes.rb is reloaded
  def organize_routes
    OrganizedRoutes.load_routes
  end

  def routes_for(key)
    OrganizedRoutes.draw(key, self)
  end
end
