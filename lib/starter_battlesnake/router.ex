defmodule StarterBattlesnake.Router do
  use Plug.Router

  plug(:match)
  plug(:dispatch)

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
    conn |> send_resp(200, "ok")
  end

  post "/move" do
    conn |> send_resp(200, "ok")
  end

  post "/end" do
    conn |> send_resp(200, "ok")
  end

  match _ do
    conn |> send_resp(404, "404 Page not found.")
  end
end
