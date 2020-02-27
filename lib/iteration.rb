def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  string_arr = []
  rows = 0
  while rows < src.length do
    pair = src[rows]
    string_arr.push("I love #{pair[0]} and #{pair[1]} on my pizza")
    rows += 1
  end
  string_arr
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  larger_num = []
  rows = 0
  while rows < src.length do
    inner_arr = src[rows]
    if inner_arr[0] > inner_arr[1]
      larger_num.push(inner_arr[0])
    else
      larger_num.push(inner_arr[1])
    end
    rows += 1
  end
  larger_num
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  even_sum = 0
  rows = 0
  while rows < src.length do
    inner_arr = src[rows]
    if (inner_arr[0] % 2 == 0) && (inner_arr[1] % 2 == 0)
      even_sum += inner_arr[0] + inner_arr[1]
    end
    rows += 1
  end
  even_sum
end
