# frozen_string_literal: true

require_relative "lib/jumon/version"

Gem::Specification.new do |spec|
  spec.name = "jumon"
  spec.version = Jumon::VERSION
  spec.authors = ["Moeki Kawakami"]
  spec.email = ["me@moeki.dev"]

  spec.summary = "The Prompt testing library for LLM that allows comparing patterns of prompts."
  spec.description = "The Prompt testing library for LLM that allows comparing patterns of prompts."
  spec.homepage = "https://github.com/moekidev/jumon"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/moekidev/jumon"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency "ruby-openai", ">= 4.1", "< 6.0"
  spec.add_dependency "cli-ui", "~> 2.2"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
