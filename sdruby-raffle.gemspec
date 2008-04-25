Gem::Specification.new do |s|
  s.name = %q{sdruby-raffle}
  s.version = "0.0.2"
  s.specification_version = 2 if s.respond_to? :specification_version=
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Matt Aimonetti"]
  s.date = %q{2008-04-24}
  s.description = %q{sdruby-raffle picks up raffle winners for you}
  s.email = ["mattaimonetti@gmail.com"]
  s.extra_rdoc_files = ["History.txt", "License.txt", "Manifest.txt", "README.txt", "website/index.txt"]
  s.files = ["History.txt", "License.txt", "Manifest.txt", "README", "README.txt", "Rakefile", "config/hoe.rb", "config/requirements.rb", "lib/raffle.rb", "lib/raffle/version.rb", "log/debug.log", "script/destroy", "script/generate", "script/txt2html", "setup.rb", "spec/raffle_spec.rb", "spec/spec.opts", "spec/spec_helper.rb", "tasks/deployment.rake", "tasks/environment.rake", "tasks/rspec.rake", "tasks/website.rake", "website/index.html", "website/index.txt", "website/javascripts/rounded_corners_lite.inc.js", "website/stylesheets/screen.css", "website/template.rhtml"]
  s.has_rdoc = true
  s.homepage = %q{http://raffle.rubyforge.org}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{raffle}
  s.rubygems_version = %q{1.1.0}
  s.summary = %q{sdruby-raffle}
end