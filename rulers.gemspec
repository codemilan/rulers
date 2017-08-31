# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rulers/version"

Gem::Specification.new do |spec|
  spec.name          = "rulers"
  spec.version       = Rulers::VERSION
  spec.authors       = ["Milan Rawal"]
  spec.email         = ["mrawal47@gmail.com"]

  spec.summary       = %q{Ruby web framework based on rack.}
  spec.description   = %q{This gem mimics rails and is developed for learning purpose about internal working of rails and is simple awesome.}
  spec.homepage      = "http://www.bizzbotit.com"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Development dependency for rulers gem, simply means rulers depends on classes/objects provided by these gems during it's development lifecycle.
  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  # Runtime dependency for rulers gem, simply means ruler depends on classes/objects provided by these gems.
  spec.add_runtime_dependency 'rack', '~> 2'
  spec.add_development_dependency "rack-test"
end
