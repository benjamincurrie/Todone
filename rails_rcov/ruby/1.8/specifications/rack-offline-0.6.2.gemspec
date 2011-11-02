# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rack-offline}
  s.version = "0.6.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Yehuda Katz"]
  s.date = %q{2011-08-16}
  s.description = %q{A Rack endpoint that generates cache manifests and other useful HTML5 offline utilities that are useful on the server-side. Rack::Offline also provides a conventional Rails endpoint (Rails::Offline) that configures Rack::Offline using expected Rails settings}
  s.email = %q{wycats@gmail.com}
  s.files = ["LICENSE", "lib/rack/offline/config.rb", "lib/rack/offline/version.rb", "lib/rack/offline.rb", "lib/rack-offline.rb"]
  s.homepage = %q{http://www.yehudakatz.com}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{rack-offline}
  s.rubygems_version = %q{1.4.1}
  s.summary = %q{A Rack toolkit for working with offline applications}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
