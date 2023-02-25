defmodule StarterBattlesnake.Router do
  use Plug.Router
  require Logger

  plug(:match)
  plug(:dispatch)
  plug(Plug.Logger, log: :info)

  get "/" do
    conn
    |> send_resp(
      200,
      JSON.encode!(%{
        apiversion: "1",
        author: "MyUsername",
        color: "#888888",
        head: "default",
        tail: "default",
        version: "0.0.1-beta"
      })
    )
  end

  post "/start" do
    {:ok, body, conn} = read_body(conn)
    body |> JSON.decode!() |> Logger.info()
    conn |> resp(200, "ok")
  end

  post "/move" do
    {:ok, body, conn} = read_body(conn)
    body |> JSON.decode!() |> Logger.info()
    conn |> resp(200, "ok")
  end

  post "/end" do
    {:ok, body, conn} = read_body(conn)
    body |> JSON.decode!() |> Logger.info()
    conn |> resp(200, "ok")
  end

  match _ do
    conn |> resp(404, "404 Page not found.")
  end
end
