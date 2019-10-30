# Enter your object-oriented solution here!
class Multiples

  attr_accessor :limit

  def initialize(limit)
    @limit = limit
  end

  def collect_multiples
    multiples = []
    for i in 1...(self.limit) do
      if (i % 5 == 0 || i % 3 == 0)
        multiples << i
      end
    end

    return multiples
  end

  def sum_multiples
    sum = 0
    multiples = self.collect_multiples
    multiples.each{|multiple| sum += multiple}
    return sum
  end


end
