defmodule LanguageList do
  def new() do
    []
  end

  def add(list, language) do
    [ language | list ]
  end

  def remove(list) do
    List.delete_at(list, 0)
  end

  def first(list) do
    [ head | _tail ] = list
    head
  end

  def count(list) do
    length(list)
  end

  def exciting_list?(list) do
    "Elixir" in list
  end
end
