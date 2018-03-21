defmodule SoapExamplesTest do
  use ExUnit.Case
  doctest SoapExamples

  test "greets the world" do
    assert SoapExamples.hello() == :world
  end
end
