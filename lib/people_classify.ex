defmodule PeopleClassify do
  import SimpleBayes

  def trained_for_josi do
    machine = SimpleBayes.init
      |> SimpleBayes.train(:josi,"sweet")
    machine
  end
end
