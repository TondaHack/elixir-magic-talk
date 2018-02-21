defmodule ElixirMagicTalkTest do
  use ExUnit.Case
  doctest ElixirMagicTalk

  test "greets the world" do
    assert ElixirMagicTalk.hello() == :world
  end
end
