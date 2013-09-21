defmodule GistsIO.Mixfile do
    use Mix.Project

    def project do
        [ app: :gistsio,
            version: "0.0.1",
            elixir: "~> 0.10.2",
            deps: deps ]
    end

    # Configuration for the OTP application
    def application do
        [ 
            mod: { GistsIO, [] },
            applications: [:cowboy] 
        ]
    end

    # Returns the list of dependencies in the format:
    # { :foobar, "~> 0.1", git: "https://github.com/elixir-lang/foobar.git" }
    defp deps do
        [ 
            {:cowboy, github: "extend/cowboy"},
            {:httpotion, "0.2.2",[github: "myfreeweb/httpotion"]},
            {:jsonex,"2.0",[github: "marcelog/jsonex", tag: "2.0"]}
        ]
    end
end