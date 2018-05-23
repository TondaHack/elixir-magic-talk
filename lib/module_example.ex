defmodule ElixirModule do
  @moduledoc """
    Elixir module example
  """

  @doc """
    Run function
  """
  def run() do
    "Public function uses #{private_function()}!"
  end

  defp private_function() do
    "private function"
  end
end

