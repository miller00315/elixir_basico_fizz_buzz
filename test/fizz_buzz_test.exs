defmodule FizzBuzzTest do
  use ExUnit.Case

  describe "build/1" do
    test "when a valid file is provided, returns the converted list" do
      expectedResponse = {:ok, [1, 2, :fizz, 4, :buzz, :fizz, 7, 8, :fizz, :buzz, :fizzBuzz]}
      assert FizzBuzz.build("numbers.txt") == expectedResponse
    end

    test "when a invalid file is provided, returns a message with the error" do
      expectedResponse = {:error, "Erro read the file enoent"}
      assert FizzBuzz.build("invalid.txt") == expectedResponse
    end
  end
end
