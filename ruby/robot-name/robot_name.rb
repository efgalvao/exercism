class Robot
    ALPHAS  = ('A'..'Z').to_a.freeze
    NUMBERS = (0..9).to_a.freeze
    @@generated_names = []

    def initialize
      @name = generate
      end
        
    def self.setup
    end 

    def self.forget 
    end

    def reset 
        @name = generate
    end

    def name
        @name
    end
  
      def generate
        loop do
          name = (ALPHAS.sample(2) + NUMBERS.sample(3)).join
          unless @@generated_names.include?(name)
            @@generated_names << name
            break
          end
        end
        @@generated_names.last
      end  
end
