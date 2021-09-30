defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    hourly_rate * 8.0
  end

  def apply_discount(before_discount, discount) do
  discount_rate = (100 - discount) / 100.0
  before_discount * discount_rate
  end

  def monthly_rate(hourly_rate, discount) do
    monthly_total = daily_rate(hourly_rate) * 22
    monthly_rate = apply_discount(monthly_total, discount)
    ceil(monthly_rate)
  end

  def days_in_budget(budget, hourly_rate, discount) do
    after_discount = 100 - discount
    budget_total = (budget * 100.0) / after_discount 
    days = budget_total / (hourly_rate * 8)
    days  |> Float.floor(1)
  end
end
