defmodule SoapExamples.MixProject do
  use Mix.Project

  def project do
    [
      app: :soap_examples,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :detergentex]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
        {:erlsom, github: "willemdj/erlsom"},
        {:detergentex, "0.0.5"},
        {:sweet_xml, "0.6.5"}
    ]
  end
end
