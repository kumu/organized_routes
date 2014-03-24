$:.push File.expand_path("../lib", __FILE__)

require "organized_routes/version"

Gem::Specification.new do |s|
  s.name        = "organized_routes"
  s.version     = OrganizedRoutes::VERSION
  s.authors     = ["Ryan Mohr @rymohr"]
  s.email       = ["ryan@kumu.io"]
  s.homepage    = "https://github.com/kumu/organized_routes"
  s.summary     = "Organize your rails routes into separate files"
  s.description = "Enough with massive routes.rb files already. " +
                  "Organize your routes into separate files instead!"
  s.files = Dir["lib/**/*"] + ["LICENSE", "README.md"]
end
