# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :game_server, GameServerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "vqx8Rt0GWzEU6el2nLz/n1oiLc/b75LG89XyRAReFXFrDZr4go016VTCZ6UCnB+e",
  render_errors: [view: GameServerWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: GameServer.PubSub,
  live_view: [signing_salt: "TzjGsVx4"]

config :game_server, games: [
  GameServer.Games.Game.Cubes,
  GameServer.Games.Game.Chess,
  GameServer.Games.Game.Checkers,
  GameServer.Games.Game.Othello,
]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
