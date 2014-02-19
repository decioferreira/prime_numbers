require 'spec_helper'
require 'prime_numbers/generator'

describe PrimeNumbers::Generator do
  describe '#first' do
    it { expect(PrimeNumbers::Generator.first).to eq(2) }
    it { expect(PrimeNumbers::Generator.first(1)).to eq([2]) }
    it { expect(PrimeNumbers::Generator.first(2)).to eq([2, 3]) }
    it { expect(PrimeNumbers::Generator.first(5)).to eq([2, 3, 5, 7, 11]) }
    it { expect(PrimeNumbers::Generator.first(10)).to eq([2, 3, 5, 7, 11, 13, 17, 19, 23, 29]) }
  end

  describe '#prime?' do
    it { expect(PrimeNumbers::Generator.prime?(1)).to be_false }
    it { expect(PrimeNumbers::Generator.prime?(2)).to be_true }
    it { expect(PrimeNumbers::Generator.prime?(3)).to be_true }
    it { expect(PrimeNumbers::Generator.prime?(4)).to be_false }
    it { expect(PrimeNumbers::Generator.prime?(5)).to be_true }
  end
end
