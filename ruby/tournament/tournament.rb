# frozen_string_literal: true

HEADER = "Team                           | MP |  W |  D |  L |  P\n"

class Tournament
  def self.tally(input)
    return HEADER if input.length < 5

    input = input.split("\n")
    table = {}

    input.each do |match|
      result_table = calculate_match(match)
      table = sum_tables(table, result_table)
    end
    result = HEADER.to_s
    ordered_table = table.sort_by { |k, v| [-v[:points], k] }
    ordered_table.each do |n|
      result += "#{n[0]} #{' ' * (30 - n[0].length)}|  #{n[1][:played]} |  #{n[1][:wins]} |  #{n[1][:draws]} |  #{n[1][:losses]} |  #{n[1][:points]}\n"
    end
    result
  end

  def self.sum_tables(table1, table2)
    table = table1.dup
    table2.each do |team, score|
      table[team] = {} if table[team].nil?
      table1[team] = {} if table1[team].nil?
      table[team] = table1[team].merge(score) { |_k, b_value, a_value| a_value + b_value }
    end
    table
  end

  def self.win(table, winner)
    table[winner][:played] += 1
    table[winner][:wins] += 1
    table[winner][:points] += 3
  end

  def self.loss(table, loser)
    table[loser][:played] += 1
    table[loser][:losses] += 1
  end

  def self.draw(table, team1, team2)
    table[team1][:played] += 1
    table[team2][:played] += 1
    table[team1][:draws] += 1
    table[team2][:draws] += 1
    table[team1][:points] += 1
    table[team2][:points] += 1
  end

  def self.calculate_match(match)
    table = {}
    match = match.split(';').map! do |n|
      if n.length <= 5
        n.chomp
      else
        table[n] = { played: 0, wins: 0, draws: 0, losses: 0, points: 0 }
        n
      end
    end

    case match[2]
    when 'win'
      win(table, match[0])
      loss(table, match[1])
    when 'loss'
      win(table, match[1])
      loss(table, match[0])
    else
      draw(table, match[0], match[1])
    end
    table
  end
end
