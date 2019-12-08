# Enter your procedural solution here!

# list all of the natural numbers below 10
# that are multiples of 3 or 5, we get 3, 5, 6, and 9.
# The sum of these multiples is 23

# list all natural nums below 1000


# get only the one that are multiples of 3 or 5

# find the sum of the listed numbers

# helper function to find all matches before adding
def collect_multiples(limit)
  # start at 3, b/c we know 1 and 2 are not multiples of 3 or 5
  count = 3
  # create an empty array to push solutions into
  arr = []

  # while loop to check numbers between 3 and given limit
  while count < limit do
    # check if num is divisible by 3 or 5
    if count % 3 == 0 || count % 5 == 0
      # push matches into array
      arr.push(count)
    end
    # increase count by 1 to check next num
    count += 1
  end

  # implicit return of array
  arr
end

# sum of all multiples of 3 and 5 below limit
def sum_multiples(limit)
  # call on helper collect_multiples() fn
  arr = collect_multiples(limit)
    # arr is an array of numbers

  # iterate through array and return the sum of all nums
  arr.reduce(:+)
end
