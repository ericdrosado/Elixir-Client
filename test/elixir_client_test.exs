defmodule ElixirClientTest do
  use ExUnit.Case
  doctest ElixirClient

  test "returns host and directory information" do
    args = ["--host=www.test.com", "--directory=./public"]
    assert ElixirClient.main(args) == "Host: www.test.com Directory: ./public"
  end

  test "indicates that no arguments were passed" do
    args = []
    assert ElixirClient.main(args) == "No arguments given"
  end

end
