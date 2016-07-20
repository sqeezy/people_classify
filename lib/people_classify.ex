defmodule PeopleClassify do
  import SimpleBayes

  def trained do
    machine = SimpleBayes.init
      |> SimpleBayes.train(:josi,"sweet")
      |> SimpleBayes.train(:anton, "funny", weight: 2)
      |> SimpleBayes.train(:heike, "funny")
    machine
  end
end
