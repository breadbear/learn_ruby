
def echo(word)
  word.to_s
end

def shout(word)
  word.upcase
end

def repeat(word, num=2)
  repeated = (word + ' ') * num
  repeated.rstrip
end

def start_of_word(word, num)
  word.split(//)
  word[0..(num-1)].to_s
end

def first_word(words)
  arr = words.split(' ')
  return arr[0]
end


def titleize(thing)
  little_words = ["a", "an", "and", "of", "the", "for", "by", "in"]
  if thing.split.size == 1
    thing.capitalize
  else
    new_thing = thing.split.each {|w| w.capitalize! unless little_words.include?(w)}
    new_thing[0].capitalize!
    new_thing.join(' ')
  end
end
