defmodule DNA do

  def encode_nucleotide(code_point) do
    cond do
      code_point == 65 -> 0b0001
      code_point == 67 -> 0b0010
      code_point == 71 -> 0b0100
      code_point == 84 -> 0b1000
      code_point == 32 -> 0b0000
    end
  end

  def decode_nucleotide(encoded_code) do
    cond do
        encoded_code == 0b0001 -> 65 
        encoded_code == 0b0010 -> 67
        encoded_code == 0b0100 -> 71
        encoded_code == 0b1000 -> 84
        encoded_code == 0b0000 -> 32 
    end
  end

  def encode(dna) do
    encode_cl(dna, <<>>)
  end

  defp encode_cl([], acc), do: acc

  defp encode_cl([nuc | tail], acc) do
    encode_cl(tail, <<acc::bitstring, encode_nucleotide(nuc)::4>>)
  end

  def decode(dna) do
    decode_cl(dna, [])
    |> to_string
    |> String.reverse 
    |> String.to_charlist
  end

  defp decode_cl(<<>>, acc), do: acc

  defp decode_cl(<<nuc::4, tail::bitstring>>, acc) do
    decode_cl(tail, [decode_nucleotide(nuc) | acc])
  end
end
