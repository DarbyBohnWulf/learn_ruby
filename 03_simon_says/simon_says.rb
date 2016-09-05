#write your code here
def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string, times=2)
  phrase = ((string+' ')*times).strip
end

def start_of_word(string,letters)
  string[0,letters]
end

def first_word(string)
  start = string.split
  start[0]
end

def titleize(string)
  title = ""
  first_pass = true
  little = ["and", "as", "in", "of", "on", "out", "over", "the", "under"]
  string.split().each { |w|
    if first_pass
      title += w.capitalize+" "
    else
      if little.include? w
        title += w+" "
      else
        title += w.capitalize+" "
      end
    end
    first_pass = false
  }
  title.strip
end
