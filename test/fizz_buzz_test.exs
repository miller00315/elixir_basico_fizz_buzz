defmodule FizzBuzzTest do
  use ExUnit.Case

  describe "build/1" do
    test "when a valid file is provided, returns the converted list" do
      assert FizzBuzz.build("numbers.txt") ==
               {:ok, [1, 2, :fizz, 4, :buzz, :fizz, 7, 8, :fizz, :buzz, :fizzBuzz]}
    end

    test "when a invalid file is provided, returns a message with the error" do
      assert FizzBuzz.build("invalid.txt") ==
               {:error, "Erro read the file enoent"}
    end
  end
end
