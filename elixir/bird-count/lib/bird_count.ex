defmodule BirdCount do
  def today(list) when list == [] do
    nil
  end
  
  def today(list) do
  [h | _] = list
    h
  end

  def increment_day_count(list) when list == [] do
    [1]
  end

  def increment_day_count(list) do
    [h | t] = list
    h = h + 1
    [h | t]
  end

  def has_day_without_birds?(list) when list == [] do
    false  
  end

  def has_day_without_birds?(list) do
    [h | t] = list
    cond do
      h == 0 -> true
      h !=  0 -> has_day_without_birds?(t)
    end    
  end

  def total([]) do
    0
  end

  def total(list) do
    [h | t ] = list
    h + total(t)
  end

  def busy_days([]) do
    0
  end

  def busy_days(list) do
    counter = 0
    [h | t] = list
    if h > 4 do
      counter + 1
    else
      counter + busy_days(t)
    end
    counter
  end
end
