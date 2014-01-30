require 'spec_helper'
require_relative '../lib/root'


## `digital_root`

# Write a method, `digital_root(num)`. It should sum the digits of a
# positive integer. If it is greater than 10, sum the digits of the
# resulting number. Keep repeating until there is only one digit in the
# result, called the "digital root". Do not use string conversion within
# your method.

describe '#digital_root' do
  context 'num is less than 10' do
    it "returns that number" do
      expect(digital_root(1)).to eq(1)
    end
  end

  context 'sum of the digits of num are less than 10' do
    it "sums the digits of a positive integer" do 
      expect(digital_root(11)).to eq(2)
      expect(digital_root(13)).to eq(4)
    end
  end

  context 'sum of the digits of num are greater than 10' do
    it 'keeps repeating until there is only one digit in the result' do
      expect(digital_root(19)).to eq(1)
      expect(digital_root(59)).to eq(5)
      expect(digital_root(149)).to eq(5)
    end
  end
end
