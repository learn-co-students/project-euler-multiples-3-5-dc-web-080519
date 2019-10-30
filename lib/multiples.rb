# Enter your procedural solution here!


#up to 999
#I could use a for loop that does <1000 and goes through each
#number if modulo is 0 then shovel that into an array
#then sum up all values in that array



def collect_multiples(limit)
  multiples = []

  for i in 1...limit do
    if (i % 5 == 0 || i % 3 == 0)
      multiples << i
    end
  end

  return multiples

end

def sum_multiples(limit)
  sum = 0
  multiples = collect_multiples(limit)
  multiples.each{|multiple| sum += multiple}
  return sum
end
