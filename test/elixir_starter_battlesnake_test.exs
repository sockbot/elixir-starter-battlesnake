defmodule RouterTest do
  use ExUnit.Case
  use Plug.Test

  alias ElixirStarterBattlesnake.Router

  doctest Router

  test "GET /" do
    conn = conn(:get, "/")
    conn = Router.call(conn, [])

    assert conn.status == 200

    assert conn.resp_body ==
             "{\"version\":\"0.0.1-beta\",\"tail\":\"default\",\"head\":\"default\",\"color\":\"#888888\",\"author\":\"MyUsername\",\"apiversion\":\"1\"}"
  end
end
