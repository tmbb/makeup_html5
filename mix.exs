defmodule Makeup.Languages.HTML5.Mixfile do
  use Mix.Project

  def project do
    [
      app: :makeup_html5,
      version: "0.1.3",
      elixir: "~> 1.0",
      start_permanent: Mix.env == :prod,
      deps: deps(),
      # Docs
      name: "Makeup - HTML5 Support",
      source_url: "https://github.com/tmbb/makeup_html5",
      homepage_url: "https://github.com/tmbb/makeup_html5",
      docs: [main: "Makeup.Lexers.HTML5Lexer", # The main page in the docs
             extras: ["README.md"]],
      # Package
      package: package(),
      description: description()
    ]
  end

  defp description do
    """
    HTML5 lexer for the Makeup syntax highlighting library
    """
  end

  defp package do
    [
      name: :makeup_html5,
      licenses: ["BSD"],
      maintainers: ["Tiago Barroso <tmbb@campus.ul.pt>"],
      links: %{"GitHub" => "https://github.com/tmbb/makeup_html5"}
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:makeup, "~> 0.2.0"},
      {:ex_doc, "~> 0.16.3", only: :dev, runtime: false}
    ]
  end
end
