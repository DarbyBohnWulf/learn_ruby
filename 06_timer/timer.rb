class Timer
  #write your code here
  attr_accessor :seconds, :minutes, :hours

  def initialize
    @seconds = 0
    @minutes = 0
    @hours = 0
  end

  def time_string
    sprintf("%02d:", @hours) + sprintf("%02d:", @minutes) + sprintf("%02d", @seconds)
  end

  def seconds=(number)
    if number<60
      @seconds = number
    else
      self.minutes = number / 60
      @seconds = number % 60
    end
  end

  def minutes=(number)
    if number<60
      @minutes = number
    else
      self.hours = number / 60
      @minutes = number % 60
    end
  end

  def hours=(number)
    if number <= 99
      @hours = number
    else
      @hours = 99
    end
  end
end
