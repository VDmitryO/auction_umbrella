import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :auction_web, AuctionWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "GEV4ZBSOGVlYbTZXHgA85WSy70rczhJxe+g6qw3Ojl/P1JSh5Ncurhxu9T99iU/0",
  server: false
