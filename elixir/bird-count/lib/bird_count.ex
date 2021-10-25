defmodule BirdCount do
  def today(list) when list == [], do: nil
  
  def today(list) do
  [h | _] = list
    h
  end

  def increment_day_count(list) when list == [], do: [1]

  def increment_day_count(list) do
    [h | t] = list
    h = h + 1
    [h | t]
  end

  def has_day_without_birds?(list) when list == [], do: false

  def has_day_without_birds?(list) do
    [h | t] = list
    cond do
      h == 0 -> true
      h !=  0 -> has_day_without_birds?(t)
    end    
  end

  def total([]), do: 0

  def total(list) do
    [h | t ] = list
    h + total(t)
  end

  def busy_days([]), do: 0
  def busy_days([head | tail]) when head >= 5, do: busy_days(tail) + 1
  def busy_days([_ | tail]), do: busy_days(tail)
end
