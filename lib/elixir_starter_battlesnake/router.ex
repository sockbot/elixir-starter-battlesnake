defmodule ElixirStarterBattlesnake.Router do
  use Plug.Router

  plug(:match)
  plug(:dispatch)

  get "/" do
    send_resp(
      conn,
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

  match _ do
    send_resp(conn, 404, "404 Page not found.")
  end
end
