class Array

  def sum
    total = 0
    each { |element| total += element }
    total
  end

  def square
    map { |element| element**2 }
  end

end
