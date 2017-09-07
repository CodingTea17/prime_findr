class Sift
  def prime_findr(num)
    nums_ary = (2..num).to_a # or nums_ary = Array (2..num)
    prime = 2
    prime_ary = []
    while prime <= num 
      prime_ary.push(prime)
      nums_ary.shift
      nums_ary = nums_ary.select { |i| i % prime != 0 }
      prime = nums_ary[0]
      if prime === nil
        prime = num+1
      end
    end
    prime_ary
  end
end
 # prime_findr(100)
