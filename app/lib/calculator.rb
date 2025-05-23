class Calculator
  def self.add(numbers)
    return 0 if numbers.empty?

    if numbers.start_with?("//")
      delimiter, numbers = numbers.match(%r{//(.+)\n(.*)})[1..2]
      numbers = numbers.gsub(delimiter, ',')
    end

    numbers = numbers.gsub("\n", ',')
    numbers.split(',').map(&:to_i).sum
  end
end