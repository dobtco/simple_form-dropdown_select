$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "dropdown_select_input/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "dropdown_select_input"
  s.version     = DropdownSelectInput::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of DropdownSelectInput."
  s.description = "TODO: Description of DropdownSelectInput."
  s.license     = "MIT"

  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {features,spec}/*`.split("\n")

end
