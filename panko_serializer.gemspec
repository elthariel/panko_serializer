# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "panko/version"

Gem::Specification.new do |spec|
  spec.name          = "panko_serializer"
  spec.version       = Panko::VERSION
  spec.authors       = ["Yosi Attias"]
  spec.email         = ["yosy101@gmail.com"]

  spec.summary       = "High Performance JSON Serialization for ActiveRecord & Ruby Objects"
  spec.homepage      = "https://yosiat.github.io/panko_serializer/"
  spec.license       = "MIT"

  spec.metadata = {
    "bug_tracker_uri" => "https://github.com/yosiat/panko_serializer/issues",
    "source_code_uri" => "https://github.com/yosiat/panko_serializer",
    "documentation_uri" => "https://yosiat.github.io/panko_serializer/",
    "changelog_uri" => "https://github.com/yosiat/panko_serializer/releases"
  }

  spec.required_ruby_version = ">= 2.3.7"

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ["lib"]

  spec.extensions << "ext/panko_serializer/extconf.rb"

  spec.add_dependency "oj", "~> 3.9.0"
end
