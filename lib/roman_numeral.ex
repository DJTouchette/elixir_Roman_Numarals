defmodule RomanNumeral do
  @numerals [{10,"X"}, {9,"IX"},{5, "V"}, {4, "IV"}, {1, "I"}]

  def converts(num), do: converts(num, @numerals)

  defp converts(num, _numerals) when num < 1 do
    ""
  end

  defp converts(num, [{arabic, roman} | tail]) when num >= arabic do
    roman <> converts(num - arabic, [{arabic, roman} | tail])
  end

  defp converts(number, [_head | tail]) do
    converts(number, tail)
  end

end
