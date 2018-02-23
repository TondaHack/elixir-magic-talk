defmodule PipeOperator do
  @doc """
    Simple pipe.

    ## Examples
      iex> PipeOperator.process_str("Hello my,  darling  ")
      %{
        "text" => "Hello my darling",
        "length" => 16,
        "words" => 3
      }
  """
  def process_str(str) do
    str
    |> clean_str()
    |> add_meta()
  end

  @doc """
    Simple pipe.

    ## Examples
      iex> PipeOperator.clean_str("Hello my,  darling  ")
      "Hello my darling"
  """
  def clean_str(str) do
    str
    |> String.trim()
    |> String.replace(~r/  +/, " ")
    |> String.replace(",", "")
  end

  defp add_meta(clean_str) do
    %{
      "text" => clean_str,
      "length" => String.length(clean_str),
      "words" => clean_str |> String.split(" ") |> length()
    }
  end
end
