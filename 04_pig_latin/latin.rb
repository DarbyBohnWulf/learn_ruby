module Latin
  DOUBLE_CONSONANTS = [
    "br", "ch", "th", "sk", "sl", "sm", "sn", "st", "sc", "sh",
   "qu", "gr", "gl", "gn", "kn", "ph", "tr", "tw",
   "cl", "cr", "pr", "pl", "fl", "sw"
  ]
  TRIPLE_CONSONANTS = ["sch", "scr", "thr", "squ"]
public
  def translate_word(word)
    translation = ""
#Latin.fix_punctuation
    dot = (word[-1] =~/[[:punct:]]/ ? word.slice!(-1) : "")
#Latin.latinize
    if word[0].match(/[aeiou]/)
      translation += word + "ay"
    elsif TRIPLE_CONSONANTS.include?(word[0..2])
      translation += word[3,word.length-3] + word[0..2] + "ay"
    elsif DOUBLE_CONSONANTS.include?(word[0..1])
      translation += word[2,word.length-2] + word[0..1] + "ay"
    else
     translation += word[1,word.length-1] + word[0] + "ay"
    end
#Latin.fix_capitalization
    if word[0] == word[0].upcase
      translation.downcase.capitalize+dot
    else
      translation+dot
    end

  end

  def fix_capitalization(word)
    pos = -1
    cap
    5.times { |l|
      word[pos]
    }
  end
end
