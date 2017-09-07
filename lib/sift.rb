class Sift
  def prime_findr(num)
    nums_ary = (2..num).to_a # or nums_ary = Array (2..num)
    prime = 2
    while prime < num
      nums_ary = nums_ary.reject{|i| (i % prime === 0 and i != prime)}
      prime = prime + 1
    end
    nums_ary
  end
end
