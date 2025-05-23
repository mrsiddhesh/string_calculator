require 'rails_helper'

RSpec.describe Calculator do
  describe '.add' do
    it 'returns 0 for an empty string' do
      expect(Calculator.add("")).to eq(0)
    end

    it 'returns the number itself if there is only one number' do
      expect(Calculator.add("1")).to eq(1)
    end

    it 'returns the sum of two numbers separated by comma' do
      expect(Calculator.add("1,2")).to eq(3)
    end

    it 'returns sum of any amount of comma-separated numbers' do
      expect(Calculator.add("1,2,3,4")).to eq(10)
    end

    it 'handles newlines between numbers' do
      expect(Calculator.add("1\n2,3")).to eq(6)
    end

    it 'supports custom delimiters with //[delimiter]\n format' do
      expect(Calculator.add("//;\n1;2")).to eq(3)
    end

    it 'raises an exception for negative numbers' do
      expect { Calculator.add("1,-2,3,-5") }.to raise_error("negative numbers not allowed: -2,-5")
    end
  end
end