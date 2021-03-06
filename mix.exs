defmodule MoviesElixirPhoenix.Mixfile do
  use Mix.Project

  def project do
    [app: :movies_elixir_phoenix,
     version: "0.2.10",
     elixir: "~> 1.5",
     elixirc_paths: elixirc_paths(Mix.env),
     compilers: [:phoenix, :gettext] ++ Mix.compilers,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [mod: {MoviesElixirPhoenix, []},
     applications: [:phoenix, :phoenix_pubsub, :bolt_sips,
      :phoenix_html, :cowboy, :logger, :gettext]]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "web", "test/support"]
  defp elixirc_paths(_),     do: ["lib", "web"]

  # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
    [{:phoenix, "~> 1.2.5"},
     {:phoenix_pubsub, "~> 1.0.2"},
     {:phoenix_html, "~> 2.10.4"},
     {:phoenix_live_reload, "~> 1.1.3", only: :dev},
     {:gettext, "~> 0.13.1"},
     {:bolt_sips, "~> 0.4.11"},
     #  {:bolt_sips, path: "../bolt_sips"},
     {:cowboy, "~> 1.1.2"}]
  end
end
