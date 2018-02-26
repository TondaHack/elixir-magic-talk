
defmodule ElixirModule do
  @moduledoc """
    Elixir module example
  """

  @doc """
    Run method
  """
  def run() do
    "Public function uses #{private_function()}!"
  end

  defp private_function() do
    "private function"
  end
end


