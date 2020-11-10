class Complement
    def self.of_dna(dna)
        dna = dna.chars
        rna = ""
        dna.each do |n|
        case n
        when 'G'
            rna += "C"
        when 'C'
            rna += "G"
        when 'T'
            rna += "A"
        when 'A'
            rna += "U"
        else
            return ""
        end
        end
        rna
    end
end
