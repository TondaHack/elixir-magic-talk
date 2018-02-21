defmodule ElixirMagicTalk.PatternMatching do
  @doc """
    Simple match.

    ## Examples
      iex> ElixirMagicTalk.PatternMatching.simple_match()
      1
  """
  def simple_match() do
    x = 1
    1 = x
  end

  @doc """
    tuple match.

    ## Examples
      iex> ElixirMagicTalk.PatternMatching.tuple_pattern({"John", "Doe", 30})
      "John Doe is 30 years old."
  """
  def tuple_pattern(person) do
    {firstname, lastname, age} = person

    "#{firstname} #{lastname} is #{age} years old."
  end

  @doc """
    tuple match.

    ## Examples
      iex> ElixirMagicTalk.PatternMatching.resolve_response({:ok, %{"name"=> "John"}})
      %{"name"=> "John"}

      iex> ElixirMagicTalk.PatternMatching.resolve_response({:error, "Bad Request"})
      ** (RuntimeError) Bad Request
  """
  def resolve_response({:ok, result}) do
    result
  end

  def resolve_response({:error, reason}) do
    raise reason
  end

  @doc """
    Pick and transform data.

    ## Examples
      iex> ElixirMagicTalk.PatternMatching.keywords_to_map([name: John, size: 4, test: :test])
      %{"name" => John, "size" => 4}

  """
  def keywords_to_map(data) do
    keywords_to_map(data, %{})
  end

  def keywords_to_map([{:name, name} | rest], state) do
    keywords_to_map(rest, Map.put(state, "name", name))
  end

  def keywords_to_map([{:size, size} | rest], state) do
    keywords_to_map(rest, Map.put(state, "size", size))
  end

  def keywords_to_map([], state) do
    state
  end

  def keywords_to_map([_| rest], state) do
    keywords_to_map(rest, state)
  end
end
