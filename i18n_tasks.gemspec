
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "i18n_tasks/version"

Gem::Specification.new do |spec|
  spec.name          = "i18n_tasks"
  spec.version       = I18nTasks::VERSION
  spec.authors       = ["Lukas_Skywalker"]
  spec.email         = ["lukas.diener@hotmail.com"]

  spec.summary       = "Various tasks for auto-generating Rails locale files"
  spec.description   = "Automatically generates locale files for Rails for different use cases"
  spec.homepage      = "https://github.com/code-fabrik/i18n_tasks"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  #if spec.respond_to?(:metadata)
  #  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  #else
  #  raise "RubyGems 2.0 or newer is required to protect against " \
  #    "public gem pushes."
  #end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activerecord", "~> 5.0"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
