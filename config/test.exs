import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :estee_lauder_sites, EsteeLauderSites.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "estee_lauder_sites_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: System.schedulers_online() * 2

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :estee_lauder_sites, EsteeLauderSitesWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "URauKfzF6N+2dRwl2qG6OCg9Pm7wX1+2YwYxvGiggIpLg/Jq0tX8r/Ksvl8/m6GG",
  server: false

# In test we don't send emails.
config :estee_lauder_sites, EsteeLauderSites.Mailer, adapter: Swoosh.Adapters.Test

# Disable swoosh api client as it is only required for production adapters.
config :swoosh, :api_client, false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
