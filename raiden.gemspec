# frozen_string_literal: true

Gem::Specification.new do |spec|
    spec.name          = "raiden"
    spec.version       = "5.0.0"
    spec.authors       = ["Raiden Erdmann"]
    spec.email         = ["raiden.erdmann@gmail.com"]

    spec.summary       = "A theme for my personal website"
    spec.homepage      = "https://raiden-e.github.io"
    spec.license       = "MIT"

    spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r{^(assets|_layouts|_includes|LICENSE|README|feed|404|_data|tags|staticman|music|privacy|trappin|lofi)}i) }

    spec.metadata      = {
      "documentation_uri" => "https://github.com/raiden-e/raiden-e.github.io#readme"
    }

    spec.add_runtime_dependency "jekyll", ">= 3.8"
    spec.add_runtime_dependency "jekyll-paginate", "~> 1.1"
    spec.add_runtime_dependency "jekyll-sitemap", "~> 1.4"
    spec.add_runtime_dependency "kramdown-parser-gfm", "~> 1.1"
    spec.add_runtime_dependency "kramdown", "~> 2.3.0"

    spec.add_development_dependency "bundler", ">= 1.16"
    spec.add_development_dependency "rake", ">= 12.0"
  end
