# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phx_nested_components,
  ecto_repos: [PhxNestedComponents.Repo]

# Configures the endpoint
config :phx_nested_components, PhxNestedComponentsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "2QUG/l8We61zg2ZVzBhRr3CSSvD3nPTMl6xZTwdyE4hTNAPjVLM9eGr0KZY+8+uS",
  render_errors: [view: PhxNestedComponentsWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhxNestedComponents.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [
    signing_salt: "SECRET_SALT"
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
