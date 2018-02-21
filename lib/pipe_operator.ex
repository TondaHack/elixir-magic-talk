defmodule ElixirMagicTalk.PipeOperator do
  @doc """
    Simple pipe.

    ## Examples
      iex> ElixirMagicTalk.PipeOperator.clean_string("Hello my,  darling  ")
      %{
        "text" => "Hello my darling",
        "length" => 16,
        "words" => 3
      }
  """
  def clean_string(str) do
    str
    |> String.trim()
    |> String.replace(~r/  +/, " ")
    |> String.replace(",", "")
    |> add_meta
  end

  defp add_meta(clean_str) do
    %{
      "text" => clean_str,
      "length" => String.length(clean_str),
      "words" => clean_str |> String.split(" ") |> length()
    }
  end
end
