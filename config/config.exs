import Config

config :ex_unit, :assert_receive_timeout, 2000

config :logger, level: :debug

config :mnesia, dir: 'mnesia'

config :sasl, sasl_error_logger: false

if Mix.env() == :test do
  config :ejabberd,
         file: "config/ejabberd.yml",
         log_path: "logs/ejabberd.log"
end
