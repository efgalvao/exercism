class Raindrops

  def initialize(droplet)
    @droplet = droplet
  end

  def self.convert(droplet)
    new(droplet).to_s
  end

  def to_s
    result = ''
    result << 'Pling' if (@droplet % 3).zero?
    result << 'Plang' if (@droplet % 5).zero?
    result << 'Plong' if (@droplet % 7).zero?
    result << "#{@droplet}" if result.empty?
    result
  end
end