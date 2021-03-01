# -*- encoding: utf-8 -*-
# stub: active_record_fix_integer_limit 0.1.7 ruby lib

Gem::Specification.new do |s|
  s.name = "active_record_fix_integer_limit".freeze
  s.version = "0.1.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["hellekin".freeze]
  s.bindir = "exe".freeze
  s.date = "2018-09-18"
  s.description = "This fixes the DEFAULT_LIMIT set to 4 bytes in ActiveModel::Type:Integer.".freeze
  s.email = ["hellekin@cepheide.org".freeze]
  s.homepage = "https://gitlab.com/hellekin/active_record_fix_integer_limit".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.5.1".freeze)
  s.rubygems_version = "3.1.2".freeze
  s.summary = "Enable ActiveRecord unsigned integers to use 8 bytes instead of 4.".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<activerecord>.freeze, [">= 5.2.1"])
    s.add_development_dependency(%q<bundler>.freeze, ["~> 1.13"])
    s.add_development_dependency(%q<pry>.freeze, ["~> 0.11"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_development_dependency(%q<rails>.freeze, ["~> 5.2.1"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.7"])
    s.add_development_dependency(%q<sqlite3>.freeze, [">= 0"])
  else
    s.add_dependency(%q<activerecord>.freeze, [">= 5.2.1"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.13"])
    s.add_dependency(%q<pry>.freeze, ["~> 0.11"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rails>.freeze, ["~> 5.2.1"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.7"])
    s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
  end
end
