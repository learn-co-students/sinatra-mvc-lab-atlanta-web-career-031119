class PigLatinizer
    attr_reader :text

    def initialize
    end

    def piglatinize(text)
        new_text = ""
        text.split(" ").each do |word|
            first_vowel_position = word =~ /[aeiouyAEIOUY]/
            if first_vowel_position == 0
                new_text << "#{word}way "
            else
                vowel_index = word =~ /[aeiouyAEIOUY]/
                consonants = word[0..(vowel_index-1)]
                new_text << "#{word[vowel_index..]}#{consonants}ay "
            end
        end
        new_text.rstrip
    end
end