require 'sift.rb'
require 'prime'
require 'benchmark'

RSpec.describe() do
  it("will return the primes numbers from 2 to 2") do
    sifter = Sift.new()
    expect(sifter.prime_findr(2)).to eq([2])
  end
  it("will return the primes numbers from 2 to 1000") do
    sifter = Sift.new()
    # Creates an array of real, confirmed prime nums
    real_prime = []
    Prime.each(100000) do |i|
      real_prime.push(i)
    end
    # puts Benchmark.measure { sifter.prime_findr(100000)}
    expect(sifter.prime_findr(100000)).to eq(real_prime)
  end
  # it("will test the speed of the Prime class") do
  #   real_prime = []
  #   Prime.each(1000000) do |i|
  #     real_prime.push(i)
  #   end
  #   expect(real_prime).to eq(real_prime)
  # end
end
