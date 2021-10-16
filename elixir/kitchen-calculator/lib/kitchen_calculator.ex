defmodule KitchenCalculator do
  def get_volume(volume_pair) do
    elem(volume_pair, 1)
  end

  def to_milliliter(volume_pair) when elem(volume_pair, 0) == :cup do
    {:milliliter, get_volume(volume_pair) * 240}
  end

  def to_milliliter(volume_pair) when elem(volume_pair, 0) == :fluid_ounce do
    {:milliliter, get_volume(volume_pair) * 30}
  end

  def to_milliliter(volume_pair) when elem(volume_pair, 0) == :teaspoon do
    {:milliliter, get_volume(volume_pair) * 5}
  end

  def to_milliliter(volume_pair) when elem(volume_pair, 0) == :tablespoon do
    {:milliliter, get_volume(volume_pair) * 15}
  end

  def to_milliliter(volume_pair) when elem(volume_pair, 0) == :milliliter do
    {:milliliter, elem(volume_pair, 1)}
  end
  
  def from_milliliter(volume_pair, unit) when unit == :cup do
    {unit, get_volume(volume_pair) / 240}
  end
  def from_milliliter(volume_pair, unit) when unit == :fluid_ounce do
    {unit, get_volume(volume_pair) / 30}
  end
  def from_milliliter(volume_pair, unit) when unit == :teaspoon do
    {unit, get_volume(volume_pair) / 5}
  end
  def from_milliliter(volume_pair, unit) when unit == :tablespoon do
    {unit, get_volume(volume_pair) / 15}
  end

  def from_milliliter(volume_pair, unit) when unit == :milliliter do
    {unit, elem(volume_pair, 1)}
  end

  def convert(volume_pair, unit) do
    volume_ml = to_milliliter(volume_pair)
    from_milliliter(volume_ml, unit)
  end
end
