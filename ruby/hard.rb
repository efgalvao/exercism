source = %{
    1 2 3
    4 5 6
    7 8 9
  }.strip
  
  matrix = source.split("\n").map do |line|
    line.strip.split.map(&:to_i)
  end
  
  p matrix[1]