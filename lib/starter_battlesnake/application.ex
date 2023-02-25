defmodule StarterBattlesnake.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application
  require Logger

  @impl true
  def start(_type, _args) do
    children = [
      # Starts a worker by calling: StarterBattlesnake.Worker.start_link(arg)
      # {StarterBattlesnake.Worker, arg}
      {Plug.Cowboy,
       scheme: :http, plug: StarterBattlesnake.Router, options: [port: cowboy_port()]}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: StarterBattlesnake.Supervisor]

    Logger.info("Starting snake...")

    Supervisor.start_link(children, opts)
  end

  defp cowboy_port, do: Application.get_env(:starter_battlesnake, :cowboy_port, 8080)
end
