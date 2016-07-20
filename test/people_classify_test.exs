defmodule PeopleClassifyTest do
  use ExUnit.Case
  doctest PeopleClassify

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "it knows josi is sweet" do
    someone_sweet = PeopleClassify.trained
                          |> SimpleBayes.classify_one("sweet")
    assert someone_sweet == :josi
  end

  test "it knows anton is funny" do
    someone_funny = PeopleClassify.trained
                      |> SimpleBayes.classify_one("funny")
    assert someone_funny == :anton
  end

  test "it knows heike is funny too" do
    funny_people = PeopleClassify.trained
                    |> SimpleBayes.classify("funny")
    assert (funny_people[:heike]) != nil
  end
end
