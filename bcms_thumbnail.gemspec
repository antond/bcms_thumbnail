# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "bcms_thumbnail/version"

Gem::Specification.new do |spec| 
  spec.name = "bcms_thumbnail"
  spec.rubyforge_project = spec.name
  spec.version = BcmsThumbnail::VERSION
  spec.summary = "A thumbnailing view helper module for BrowserCMS"
  spec.author = "Dan Collis-Puro" 
  spec.email = "dan@collispuro.com" 
  spec.homepage = "http://github.com/djcp/bcms_thumbnail" 
  spec.files += Dir["app/**/*"]
  spec.files += Dir["lib/tasks/*.rake"]
  spec.files += Dir["public/bcms/thumbnail/**/*"]
  spec.files += Dir["lib/**/*"]
  spec.files += Dir["COPYRIGHT.txt", "GPL.txt", "LICENSE.txt", "Gemfile"]
  spec.files -= Dir['app/controllers/application_controller.rb',
                    'app/helpers/application_helper.rb',
                    'app/layouts/templates/**/*']
  spec.has_rdoc = true
  spec.extra_rdoc_files = ["README"]
  if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    spec.add_dependency("mini_magick", [">= 1.2.5"])
    spec.add_dependency "browsercms", "~> 3.3.0"
  end
end
