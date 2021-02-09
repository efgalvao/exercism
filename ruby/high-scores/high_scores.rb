=begin
Write your code for the 'High Scores' exercise in this file. Make the tests in
`high_scores_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/high-scores` directory.
=end

class HighScores
    def initialize(puncts)
        @scores = puncts
    end
    def scores
        @scores
    end
    def latest
        @scores[-1]
    end    
    def personal_best
    @scores.max
    end    
    def personal_top_three
    # top3 = @scores.sort.reverse!
        if @scores.length < 3
            @scores.sort.reverse!
        else
            @scores.sort.reverse!.slice(0, 3)
        end
        # top3            
    end 
    def latest_is_personal_best?
    @scores[-1] == @scores.max
    end
end

# teste = HighScores.new([30, 50, 20, 70])
# teste.personal_top_three