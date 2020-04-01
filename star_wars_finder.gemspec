require_relative 'lib/star_wars_finder/version'

Gem::Specification.new do |spec|
  spec.name          = "star_wars_finder"
  spec.version       = StarWarsFinder::VERSION
  spec.authors       = ["RTEYL"]
  spec.email         = ["rteyl1690@gmail.com"]

  spec.summary       = %q{CLI to seach for a Star Wars character and get information about it.}
  spec.description   = %q{Using an API to collect character data you will be able to seach for a Star Wars character and get information about it. At this moment a character is only searchable by name however later updates will include search by planets and search by species.}
  spec.homepage      = "https://github.com/RTEYL/star_wars_finder"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/RTEYL/star_wars_finder"
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "bin"
  spec.executables   = ["run"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency "bundler", "~> 2.1.4"
  spec.add_development_dependency 'pry', '~> 0.13.0'
  spec.add_development_dependency 'require_all', '~> 3.0'
  spec.add_dependency 'httparty', '~> 0.18.0'
end
