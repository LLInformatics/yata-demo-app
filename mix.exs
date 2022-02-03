defmodule YataDemoApp.Mixfile do
  use Mix.Project

  def project do
    [
      app: :yata_demo_app,
      version: "0.0.1",
      elixir: "~> 1.12.2",
      elixirc_paths: elixirc_paths(Mix.env),
      compilers: [:phoenix, :gettext] ++ Mix.compilers,
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [
      mod: {YataDemoApp.Application, []},
      extra_applications: [:logger, :runtime_tools, :yatapp]
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_),     do: ["lib"]

  # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
    [
      {:phoenix, "~> 1.5.10"},
      {:phoenix_pubsub, "~> 2.0"},
      {:phoenix_html, git: "https://github.com/phoenixframework/phoenix_html.git", override: true},
      {:phoenix_live_reload, "~> 1.0", only: :dev},
      {:gettext, "~> 0.11"},
      {:cowboy, "~> 2.0"},
      {:plug_cowboy, "~> 2.0"},
      {:yatapp, "~> 0.3.0"},
      {:jason, "~> 1.1"}
    ]
  end
end
