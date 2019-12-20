require_relative 'lib/metagascra/version'

Gem::Specification.new do |spec|
  spec.name          = "metagascra"
  spec.version       = Metagascra::VERSION
  spec.authors       = ["Kenney Goad"]
  spec.email         = ["mail@kennethgoad.com"]

  spec.summary       = %q{Scrapes game scores from metacritic.}
  spec.description   = %q{Allows a user to input a game title and receive the review scores.}
  spec.homepage      = "https://www.github.com/kenney-g/metagascra"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "http://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "http://www.github.com/kenney-g/metagascra."
  spec.metadata["changelog_uri"] = "http://www.github.com/kenney-g/metagascra/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_dependency "nokogiri"
  spec.add_dependency "tty-prompt"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "minitest"

end
