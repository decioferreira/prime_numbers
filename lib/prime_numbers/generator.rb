module PrimeNumbers
  class Generator
    def self.first(n = nil)
      return 2 if n.nil?

      arr, i = [], 2
      while arr.size < n
        arr << i if prime?(i)
        i += 1
      end
      arr
    end

    def self.prime?(n)
      return false if n < 2
      (2..Math.sqrt(n)).each do |i|
        return false if n % i == 0
      end
      true
    end
  end
end
