defmodule ElixirScrapingSample.Mixfile do
  use Mix.Project

  def project do
    [app: :elixir_scraping_sample,
     version: "0.0.1",
     elixir: "~> 1.1",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :hound]]
  end
  
  defp deps do
    [
      {:hound, "~> 0.7.6"}
    ]
  end

end
