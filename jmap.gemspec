Gem::Specification.new do |s|
  s.name        = "jmap"
  s.version     = "0.0.0"
  s.summary     = "a JMAP client"
  s.description = "a JMAP client, in ruby!"
  s.authors     = ["Jesse Shawl"]
  s.email       = "jesse@jesse.sh"
  s.files       = ["lib/jmap.rb"]
  s.homepage    =
    "https://rubygems.org/gems/jmap"
  s.license       = "MIT"
  s.add_development_dependency 'rake', '~> 13.0'
  s.add_development_dependency "webmock", "~>3.18.1"
end
