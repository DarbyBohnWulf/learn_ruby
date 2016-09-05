class Book
module Titles
  LITTLE = ["a", "an", "and", "as", "in", "of", "on", "out", "over", "the", "under"]
  def Titles.titleize(string)
    title = ""
    first_pass = true
    string.split().each { |w|
      if first_pass
        title += w.capitalize+" "
      else
        if LITTLE.include? w
          title += w+" "
        else
          title += w.capitalize+" "
        end
      end
      first_pass = false
    }
    title.strip
  end

end
# write your code here
  def title=(string)
    @title = Titles.titleize(string)
  end

  def title
    @title
  end
end
