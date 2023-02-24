defmodule ElixirStarterBattlesnakeTest do
  use ExUnit.Case
  doctest ElixirStarterBattlesnake

  test "greets the world" do
    assert ElixirStarterBattlesnake.hello() == :world
  end
end
