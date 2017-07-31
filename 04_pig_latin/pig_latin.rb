def translate(word)
  vowels = ['a', 'e', 'i', 'o', 'u']
  pigitized = []
  word.split.each do |pigit|
    w = pigit[0]
    x = pigit[1]
    y = pigit[2]
    if vowels.include?(w)
      piggered = pigit + "ay"
    elsif w == "q" and x == "u"
      pig = pigit.split('')
      pigged = pig[2..pig.length-1]
      pigged.push w + x + "ay"
      piggered = pigged.join
    elsif x == "q" and y == "u"
      pig = pigit.split('')
      pigged = pig[3..pig.length-1]
      pigged.push w + x + y + "ay"
      piggered = pigged.join
    elsif not vowels.include?(x) and not vowels.include?(y)
      pig = pigit.split('')
      pigged = pig[3..pig.length-1]
      pigged.push w + x + y + "ay"
      piggered = pigged.join
    elsif vowels.include?(x)
      pig = pigit.split('')
      pigged = pig[1..pig.length-1]
      pigged.push w + "ay"
      piggered = pigged.join
    else
      pig = pigit.split('')
      pigged = pig[2..pig.length-1]
      pigged.push w + x + "ay"
      piggered = pigged.join
    end
    pigitized.push piggered
  end
  if pigitized.length == 1
    pigitized.join
  else
    pigitized.join(' ')
  end
end
