class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    case @speed
    when 1..4
      production = @speed * 221
    when 5..8
      production = @speed * 221 / 10.0
      production * 9
    when 9
      production = @speed * 221 / 10.0
      production * 8
    when 10
      production = @speed * 221 / 100.0
      production * 77
    end
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).floor
  end
end
