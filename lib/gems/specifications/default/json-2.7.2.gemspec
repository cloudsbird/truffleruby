# -*- encoding: utf-8 -*-
# stub: json 2.7.2 ruby lib
# stub: ext/json/ext/generator/extconf.rb ext/json/ext/parser/extconf.rb ext/json/extconf.rb

Gem::Specification.new do |s|
  s.name = "json".freeze
  s.version = "2.7.2".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/flori/json/issues", "changelog_uri" => "https://github.com/flori/json/blob/master/CHANGES.md", "documentation_uri" => "https://flori.github.io/json/doc/index.html", "homepage_uri" => "https://flori.github.io/json", "source_code_uri" => "https://github.com/flori/json", "wiki_uri" => "https://github.com/flori/json/wiki" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Florian Frank".freeze]
  s.date = "2025-01-15"
  s.description = "This is a JSON implementation as a Ruby extension in C.".freeze
  s.email = "flori@ping.de".freeze
  s.extensions = ["ext/json/ext/generator/extconf.rb".freeze, "ext/json/ext/parser/extconf.rb".freeze, "ext/json/extconf.rb".freeze]
  s.extra_rdoc_files = ["README.md".freeze]
  s.files = ["README.md".freeze, "ext/json/ext/generator/extconf.rb".freeze, "ext/json/ext/parser/extconf.rb".freeze, "ext/json/extconf.rb".freeze, "json.rb".freeze, "json/add/bigdecimal.rb".freeze, "json/add/complex.rb".freeze, "json/add/core.rb".freeze, "json/add/date.rb".freeze, "json/add/date_time.rb".freeze, "json/add/exception.rb".freeze, "json/add/ostruct.rb".freeze, "json/add/range.rb".freeze, "json/add/rational.rb".freeze, "json/add/regexp.rb".freeze, "json/add/set.rb".freeze, "json/add/struct.rb".freeze, "json/add/symbol.rb".freeze, "json/add/time.rb".freeze, "json/common.rb".freeze, "json/ext.rb".freeze, "json/generic_object.rb".freeze, "json/version.rb".freeze]
  s.homepage = "https://flori.github.io/json".freeze
  s.licenses = ["Ruby".freeze]
  s.rdoc_options = ["--title".freeze, "JSON implementation for Ruby".freeze, "--main".freeze, "README.md".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.3".freeze)
  s.rubygems_version = "3.5.22".freeze
  s.summary = "JSON Implementation for Ruby".freeze
end
