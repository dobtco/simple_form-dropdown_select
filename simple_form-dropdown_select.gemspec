$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "simple_form/dropdown_select/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name = "simple_form-dropdown_select"
  s.version = SimpleForm::DropdownSelect::VERSION

  s.required_ruby_version = Gem::Requirement.new('>= 2.0.0')
  s.authors = ['Adam Becker']
  s.summary = 'A more powerful dropdown input for Simple Form.'
  s.description = 'Using the power of not-actually-a-select element, each option in this ' +
                  'dropdown can have helper text associated with it.'
  s.email = 'adam@dobt.co'
  s.license = 'MIT'

  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {features,spec}/*`.split("\n")

  s.homepage = 'http://github.com/dobtco/simple_form-dropdown_select_input'

  s.add_dependency 'coffee-script'
  s.add_dependency 'rspec-rails'
  s.add_dependency 'simple_form'
  s.add_dependency 'sass'
end
