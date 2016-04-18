defmodule Dispatch.Mixfile do
  use Mix.Project

  def project do
    [app: :dispatch,
     version: "0.0.1",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :phoenix_pubsub],
      mod: {Dispatch, []}]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:hash_ring_ex, "~> 1.1.2"},
      {:phoenix_pubsub, git: "https://github.com/phoenixframework/phoenix_pubsub.git"}
    ]
  end
end