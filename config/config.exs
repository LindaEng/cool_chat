# This file is responsible for configuring your application
# and its dependencies with the aid of the Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
import Config

config :cool_chat, CoolChat.Repo,
  database: "cool_chat_repo",
  username: "user",
  password: "pass",
  hostname: "localhost"

config :cool_chat,
  ecto_repos: [CoolChat.Repo]

# Configures the endpoint
config :cool_chat, CoolChatWeb.Endpoint,
  url: [host: "localhost"],
  render_errors: [view: CoolChatWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: CoolChat.PubSub,
  live_view: [signing_salt: "2lFuairo"]

# Configures the mailer
#
# By default it uses the "Local" adapter which stores the emails
# locally. You can see the emails in your browser, at "/dev/mailbox".
#
# For production it's recommended to configure a different adapter
# at the `config/runtime.exs`.
config :cool_chat, CoolChat.Mailer, adapter: Swoosh.Adapters.Local

# Swoosh API client is needed for adapters other than SMTP.
config :swoosh, :api_client, false

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{config_env()}.exs"
