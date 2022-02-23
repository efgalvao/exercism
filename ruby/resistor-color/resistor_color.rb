# frozen_string_literal: true

class ResistorColor
  COLORS = %w[black brown red orange yellow green blue violet grey white]

  def self.color_code(color)
    COLORS.each_with_index do |c, i|
      return i if c == color
    end
  end
end
