# DEFINE method to determinate if the first word it's anagram to the other
# IF the lengths of the both words its equal
# EVALUATE both in canonical method (Canonical is order the word in alphabetical order)
# ELSE it's not an anagram
# END IF
# END method

def canonical(word)
  word.split('').sort.join
end

def are_anagrams?(word1, word2)
  if word2.length == word1.length
    canonical(word1) == canonical(word2)
  else
    false
  end
end


# DEFINE method to determinate the values in the array are anagrams from the word
# VALIDATE the array with map methot to generate an array only if the condition is true (the word in ht array is anagram from the word)
# ELIMINATE the nil values from the array
# END method


def anagrams_for(word, array)
  array.map{ |palabra| palabra if are_anagrams?(palabra, word)}.compact
end


p anagrams_for("hola", ["aloh","loko","laho","ok",])




#p are_anagrams?("wodr","wosrd")