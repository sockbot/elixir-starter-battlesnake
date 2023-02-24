defmodule ElixirStarterBattlesnake.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application
  require Logger

  @impl true
  def start(_type, _args) do
    children = [
      # Starts a worker by calling: ElixirStarterBattlesnake.Worker.start_link(arg)
      # {ElixirStarterBattlesnake.Worker, arg}
      {Plug.Cowboy,
       scheme: :http, plug: ElixirStarterBattlesnake.HelloWorldPlug, options: [port: 8080]}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: ElixirStarterBattlesnake.Supervisor]

    Logger.info("Starting snake...")

    Supervisor.start_link(children, opts)
  end
end
