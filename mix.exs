defmodule EctoCrux.MixProject do
  use Mix.Project

  def project do
    [
      app: :ecto_crux,
      name: "EctoCrux",
      version: "1.3.1",
      elixir: "~> 1.13",
      elixirc_paths: elixirc_paths(Mix.env()),
      start_permanent: Mix.env() == :prod,
      description: "Generate common repo calls within your context modules",
      deps: deps(),
      package: package()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp package do
    [
      licenses: ["GNU GPLv3"],
      links: %{"GitHub" => "https://github.com/delight-data/ecto_crux"}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, ">= 0.28.5", only: :dev},
      {:ecto_sql, "~> 3.8", only: [:dev, :test]},
      {:dialyxir, "~> 1.0", only: [:dev], runtime: false}
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:dev), do: ["lib_sample", "lib"]
  defp elixirc_paths(:prod), do: ["lib"]
  defp elixirc_paths(:test), do: ["lib_sample", "lib", "test"]
end
