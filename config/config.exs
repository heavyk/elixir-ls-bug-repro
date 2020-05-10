# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :bug_repro, BugReproWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "XY2Lzb/Tbh1z2X8qoQ8bO/pOIU2tpe7jzhIuKGk5LnAk3HK+/I0Jb0Mu9inwmA6f",
  render_errors: [view: BugReproWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: BugRepro.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "iWz1sxAj"],
  reloadable_compilers: [:phoenix, :elixir],
  reloadable_apps: [:bug_repro, :phoenix]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
