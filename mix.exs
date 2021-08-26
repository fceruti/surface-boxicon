defmodule Boxicon.MixProject do
  use Mix.Project

  def project do
    [
      app: :surface_boxicon,
      version: "0.5.2",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps(),

      # Docs
      name: "Surface Boxicons",
      source_url: "https://github.com/fceruti/surface-boxicons",
      docs: [
        # The main page in the docs
        main: "Boxicon",
        extras: ["README.md"]
      ]
    ]
  end

  defp description do
    """
    Boxicon is surface component library that wraps the amazing boxicons library.
    """
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README.md"],
      maintainers: ["Francisco Ceruti"],
      licenses: ["Apache 2.0"],
      links: %{
        "GitHub" => "https://github.com/fceruti/surface-boxicons",
        "Docs" => "https://hexdocs.pm/surface-boxicons/"
      }
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
      {:surface, "~> 0.5.1"},
      {:ex_doc, "~> 0.24", only: :dev, runtime: false},
      {:dialyxir, "~> 1.0", only: [:dev], runtime: false}
    ]
  end
end
