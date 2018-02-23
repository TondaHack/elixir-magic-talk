defmodule ListTest do
  use ExUnit.Case

  test "Linked list" do
    assert [1 | [2 | [3 | []]]] == [1, 2, 3]
  end

  test "Add value (fast)" do
    simple_list = [2, 3]

    assert [1 | simple_list] == [1, 2, 3]
  end

  test "Head | Tail" do
    [head | tail] = [1, 2, 3]

    assert head == 1
    assert tail == [2, 3]
  end
end
