defmodule ReactivehubSdkElixir.MixProject do
  use Mix.Project

  def project do
    [
      app: :reactivehub_sdk_elixir,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps()
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
      {:httpoison, "~> 1.4"}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
    ]
  end
  
  defp package() do
    name: "reactivehub_sdk",
    # These are the default files included in the package
    files: ~w(lib .formatter.exs mix.exs README* readme* LICENSE*
              license* CHANGELOG* changelog* src),
    licenses: ["Apache 2.0"],
    links: %{"GitHub" => "https://github.com/luizcaciatori/reactivehub-sdk-elixir"}
  end
end
