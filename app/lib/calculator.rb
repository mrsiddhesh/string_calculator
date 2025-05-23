class Calculator
  def self.add(numbers)
    return 0 if numbers.empty?

    if numbers.start_with?("//")
      delimiter, numbers = numbers.match(%r{//(.+)\n(.*)})[1..2]
      numbers = numbers.gsub(delimiter, ',')
    end

    numbers = numbers.gsub("\n", ',')
    nums = numbers.split(',').map(&:to_i)

    negatives = nums.select { |n| n < 0 }
    raise "negative numbers not allowed: #{negatives.join(',')}" unless negatives.empty?

    nums.select { |n| n <= 1000 }.sum
  end
end