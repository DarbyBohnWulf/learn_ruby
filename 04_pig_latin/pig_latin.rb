require "latin"
include Latin

#write your code here
def translate(string)
  sentence = ""
  string.split().each { |w|
    sentence += translate_word(w) + " "
  }
  sentence.strip
end
