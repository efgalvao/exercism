defmodule Secrets do

  use Bitwise

  def secret_add(secret) do
    _adder = fn (secret2) -> secret + secret2 end
  end

  def secret_subtract(secret) do
    _subtractor = fn (secret2) -> secret2 - secret end
  end

  def secret_multiply(secret) do
    _multiplier = fn (secret2) -> secret * secret2 end
  end

  def secret_divide(secret) do
    _divider = fn (secret2) -> div(secret2, secret) end
  end

  def secret_and(secret) do
    _ander =  fn (secret2) -> Bitwise.band(secret, secret2) end
  end

  def secret_xor(secret) do
    _xorer =  fn (secret2) -> Bitwise.bxor(secret, secret2) end
  end

  def secret_combine(secret_function1, secret_function2) do
    _combine = fn (secret) -> secret_function2.(secret_function1.(secret)) end
  end
end
