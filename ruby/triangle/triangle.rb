class Triangle
  def initialize(sides)
    @sides = sides.sort
  end

  def equilateral?
    return false unless sides != [0, 0, 0]

    if sides[0] == sides[1] && sides[1] == sides[2]
      true
    else
      false
    end
  end

  def isosceles?
    return false unless sides != [0, 0, 0]

    return true if sides[0] == sides[1] && (sides[0] + sides[1] >= sides[2])

    return true if sides[1] == sides[2] && (sides[1] + sides[2] >= sides[0])

    return true if sides[0] == sides[2] && (sides[0] + sides[2] >= sides[1])

    false
  end

  def scalene?
    return false unless sides != [0, 0, 0]

    return false if sides[0] == sides[1] || sides[1] == sides[2] || sides[0] == sides[2]

    true if sides[0] + sides[1] >= sides[2]
  end

  private

  attr_reader :sides
end
