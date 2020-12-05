defmodule FizzBuzz do
  def build(file_name) do
    # O resultado é passado para a proxima
    file_name
    |> File.read()
    |> handle_file_read()
  end

  # defp funções privadas
  defp handle_file_read({:ok, result}) do
    # "1,2,3,4" -> [1,2,3,4]
    result
    # O pipeOperator passa o valor acima como parametro para a função abaixo de modo implicito, o segundo argumento ainda precisa ser passado
    |> String.split(",")
    # Quando apenas um parametro passado direto posso utiliza o & e o passadar a aridade(qunatidade de parâmetros)
    |> Enum.map(&convert_and_evaluate_number/1)
  end

  defp handle_file_read({:error, reason}), do: "Erro read the file #{reason}"

  defp convert_and_evaluate_number(number) do
    number
    |> String.to_integer()
    |> evaluate_number()
  end

  defp evaluate_number(number) when rem(number, 5) == 0 and rem(number, 3) == 0, do: :fizzBuzz
  defp evaluate_number(number) when rem(number, 3) == 0, do: :fizz
  defp evaluate_number(number) when rem(number, 5) == 0, do: :buzz
  defp evaluate_number(number), do: number
end
