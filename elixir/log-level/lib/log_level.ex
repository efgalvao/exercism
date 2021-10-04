defmodule LogLevel do
  def to_label(level, legacy?) do
    cond do
    level == 0 and legacy? == false -> 
      :trace
    level == 1 ->
      :debug
    level == 2 ->
      :info
    level == 3 ->
      :warning
    level == 4 ->
      :error
    level == 5 and legacy? == false -> 
      :fatal
    true ->
      :unknown
    end
  end

  def alert_recipient(level, legacy?) do
    label = LogLevel.to_label(level, legacy?)
    cond do
    label  in [:error, :fatal] ->
      :ops
    label == :unknown and legacy? == true ->
      :dev1
    label == :unknown and legacy? == false ->
      :dev2
    true ->
      :false
    end
  end
end
