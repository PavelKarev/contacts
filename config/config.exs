# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :contact,
  ecto_repos: [Contact.Repo]

# Configures the endpoint
config :contact, Contact.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "eY4gUaMfIHBbOGPJ6Ws+WYRcbfVxEhXxwo9J0T6TlwTv8fy2qdH9rOvD+jxJaPyv",
  render_errors: [view: Contact.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Contact.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
