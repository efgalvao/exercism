defmodule TakeANumber do
  def start() do
    spawn(fn -> wait(0) end)
  end

  defp wait(state) do
    receive do
      {:report_state, sender_pid} ->
      send(sender_pid, state)
      wait(state)

      {:take_a_number, sender_pid} ->
      state = state + 1
      send(sender_pid, state)
      wait(state)

      :stop ->
        nil

      _ ->
        wait(state)
    end
  end
end
