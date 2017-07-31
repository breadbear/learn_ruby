class Book
  attr_accessor :title
  def title
    little_words = ["a", "an", "and", "of", "the", "for", "by", "in"]
    final = []
    original = @title.split
    if original.length == 1
      final.push(original[0].capitalize)
    else
      original.each do |word|
        if little_words.include?(word)
          final.push(word)
        else
          final.push(word.capitalize)
        end
      end
      final[0].capitalize!
    end
    final.join(' ')
  end
end
