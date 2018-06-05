defmodule ElixirClientTest do
  use ExUnit.Case
  doctest ElixirClient

  #test "returns directory information" do
  #  args = ["--host=www.test.com"]
  #  assert ElixirClient.main(args) == "Host: www.test.com"
  #end

  test "indicates that no arguments were passed" do
    args = []
    assert ElixirClient.main(args) == "No arguments given"
  end

end
