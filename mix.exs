defmodule Boxicon.MixProject do
  use Mix.Project

  def project do
    [
      app: :boxicon,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
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
      {:ex_doc, "~> 0.24", only: :dev, runtime: false}
    ]
  end
end
