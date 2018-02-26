# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :confy_web,
  namespace: ConfyWeb,
  ecto_repos: [ConfyWeb.Repo]

# Configures the endpoint
config :confy_web, ConfyWebWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "xQ3MwxMJh5l0vKA8VbwiD40qaHEX863cfhDLW9hvbCR3XvMBidj62j35c8awEEtF",
  render_errors: [view: ConfyWebWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ConfyWeb.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
