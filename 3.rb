# Description:
#   The prime factors of 13195 are 5, 7, 13 and 29.
#   What is the largest prime factor of the number 600851475143 ?

def is_prime?(n)
  (2..(n/2)).each do |x|
    return false if n % x == 0
  end
  return true
end

# recursion???
def large_prime_factor(n)
  return n if is_prime? n
  (2..(n/2)).each do |x|
    return large_prime_factor(n/x) if (is_prime?(x) && n % x == 0)
  end
end

puts large_prime_factor 600851475143

