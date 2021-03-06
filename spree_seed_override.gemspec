# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_seed_override'
  s.version     = '0.0.1'
  s.summary     = 'A Spreecommerce extension that overrides the default seeding to avoid duplicates'
  s.description = 'A Spreecommerce extension that overrides the default seeding to avoid duplicates'
  s.required_ruby_version = '>= 1.9.3'

  s.author    = 'Sanad Liaquat'
  s.email     = 'sanadhussain@gmail.com'
  s.homepage  = 'https://github.com/sliaquat'

  s.files       = `git ls-files`.split("\n")
  #s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'
  s.license       = "MIT"
  s.add_dependency 'spree_core', '~> 2.4.1'

end
