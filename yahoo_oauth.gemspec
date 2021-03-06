# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{yahoo_oauth}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["David Li"]
  s.date = %q{2010-05-18}
  s.description = %q{Ruby library to the Yahoo! OAuth API}
  s.email = %q{taweili@yahoo.com}
  s.extra_rdoc_files = ["README.rdoc", "lib/yahoo_oauth.rb"]
  s.files = ["Manifest", "README.rdoc", "Rakefile", "lib/yahoo_oauth.rb", "yahoo_oauth.gemspec"]
  s.homepage = %q{http://github.com/taweili/yahoo_oauth}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Yahoo_oauth", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{yahoo_oauth}
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Ruby library to the Yahoo! OAuth API}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<oauth>, [">= 0"])
    else
      s.add_dependency(%q<oauth>, [">= 0"])
    end
  else
    s.add_dependency(%q<oauth>, [">= 0"])
  end
end
