defmodule PeopleClassify do
  import SimpleBayes

  def trained do
    machine = SimpleBayes.init
      |> SimpleBayes.train(:josi,"sweet")
      |> SimpleBayes.train(:anton, "funny")
    machine
  end
end
