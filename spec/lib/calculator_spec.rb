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
  end
end