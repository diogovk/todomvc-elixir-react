use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :todomvc, Todomvc.Endpoint,
  http: [port: 4001],
  server: true,
  watchers: [
    node: ["node_modules/webpack/bin/webpack.js", "--color"]
  ]

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :todomvc, Todomvc.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "todomvc_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# Start Hound for ChromeDriver
config :hound, driver: "chrome_driver"
