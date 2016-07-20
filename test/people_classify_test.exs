defmodule PeopleClassifyTest do
  use ExUnit.Case
  doctest PeopleClassify

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "it knows josi is sweet" do
    someone_sweet = PeopleClassify.trained_for_josi
                          |> SimpleBayes.classify_one("sweet")
    assert someone_sweet == :josi
  end
end
