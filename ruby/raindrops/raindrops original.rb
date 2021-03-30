class Raindrops
  def self.convert(droplet)
    result = ''
    result << 'Pling' if (droplet % 3).zero?
    result << 'Plang' if (droplet % 5).zero?
    result << 'Plong' if (droplet % 7).zero?
    result << droplet.to_s if result.empty?
    result
  end
end
