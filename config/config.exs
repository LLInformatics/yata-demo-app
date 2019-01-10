# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :yata_demo_app, YataDemoAppWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Uan9Ht7ZftTvheJuqqSHOkkIuvmTC77LIKvjP2tZJ3sqao86OGd6FqmIfehO1nkV",
  render_errors: [view: YataDemoAppWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: YataDemoApp.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :yatapp,
  api_key: System.get_env("YATA_API_KEY"),
  project_id: System.get_env("YATA_PROJECT_ID"),
  default_locale: "en",
  locales: ~w(en),
  otp_app: :yata_demo_app,
  json_parser: Jason,
  store: Yatapp.Store.ETS,
  download_on_start: true,
  save_to_path: "priv/locales/",
  translations_format: "json",
  translation_file_parser: Jason,
  root: false,
  strip_empty: false,
  enable_websocket: true,
  var_prefix: "%{",
  var_suffix: "}",
  fallback: false

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
