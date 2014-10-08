# Description:
#   A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
#   Find the largest palindrome made from the product of two 3-digit numbers.

def largest_palidrome(digit)
  upper_bound = 10 ** digit
  lower_bound = 10 ** ( digit-1 )
  result = []
  upper_bound.downto(lower_bound) do |x|
    upper_bound.downto(lower_bound) do |y|
      product = x*y
      result << product if (product.to_s == product.to_s.reverse)
    end
  end
  result.max
end
p largest_palidrome 2
p largest_palidrome 3

