require_relative 'lib/turkish_list/version'

Gem::Specification.new do |spec|
  spec.name          = "turkish_list"
  spec.version       = TurkishList::VERSION
  spec.authors       = ["Hasan Karlı"]
  spec.email         = ["karlihasann@gmail.com"]

  spec.summary       = %q{A gem is expected turkish plate number and than return city name.}
  spec.homepage      = "https://github.com/hasankarli/turkish_list"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://rubygems.org/profiles/hasankarli"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/hasankarli/turkish_list"
  spec.metadata["changelog_uri"] = "https://github.com/hasankarli/turkish_list"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
