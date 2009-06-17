# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rack-noie}
  s.version = "1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Julio Cesar Ody"]
  s.date = %q{2009-05-11}
  s.email = %q{julioody@gmail.com}
  s.extra_rdoc_files = [
    "README.markdown"
  ]
  s.files = [
    "README.markdown",
    "Rakefile",
    "VERSION.yml",
    "lib/noie.rb",
    "test/noie_test.rb"
  ]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/juliocesar/rack-noie}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{A Rack middleware to redirect IE6 users out of your website}
  s.test_files = [
    "test/noie_test.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
