#write your code here
def ftoc(f_temperature)
  (c_temperature = (f_temperature - 32)/1.8).round
end

def ctof(c_temperature)
  (f_temperature = (c_temperature * 1.8)+32)
end
