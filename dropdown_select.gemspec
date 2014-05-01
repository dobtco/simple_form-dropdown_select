$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "simple_form/dropdown_select/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "simple_form-dropdown_select"
  s.version     = SimpleForm::DropdownSelect::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of DropdownSelectInput."
  s.description = "TODO: Description of DropdownSelectInput."
  s.license     = "MIT"

  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {features,spec}/*`.split("\n")

end
