# Enter your object-oriented solution here!
class Multiples

  attr_reader :limit

  def initialize(limit)
    @limit = limit
  end

  def collect_multiples
    count = 3
    multiples = []

    while count < self.limit do
      if count % 3 == 0 || count % 5 == 0
        multiples << count
      end
      count += 1
    end

    return multiples
  end

  def sum_multiples
    multiples = self.collect_multiples
    multiples.reduce(:+)
  end

end
