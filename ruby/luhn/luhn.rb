=begin
Write your code for the 'Luhn' exercise in this file. Make the tests in
`luhn_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/luhn` directory.
=end

class Luhn
  def self.valid?(number)
        if number.length <=1 or number.match(/[$!@#a-z-]/)
            return false
        end
        number = number.gsub(/[^0-9]/,'').chars
        reversed = number.reverse!.clone
        # p reversed
        resultado = doubling(reversed)
        # p resultado
        resultado = soma(resultado)
        if resultado % 10 == 0
          true
        else
          false
        end
    end

    private

    def self.doubling(reversed)
      (0...reversed.length).each do |n|
          if n.odd?
            aux = reversed[n].to_i*2
          if aux > 9
            reversed[n] = aux -9
          else
            reversed[n] = aux                
          end
        end
      end
      reversed
    end

    def self.soma(x)
      x = x.each.inject {|s, n| s.to_i + n.to_i}
      end

end

# p Luhn.valid?("059")
# Luhn.valid?("4539 1488 0343 6467")