class Triangle
  attr_accessor :first_side, :second_side, :third_side

  def initialize(first_side, second_side, third_side)
    @first_side = first_side
    @second_side = second_side
    @third_side = third_side
  end

  def kind
    array = []
    array << @first_side
    array << @second_side
    array << @third_side

    if array.min <= 0 || array.min(2).reduce(:+) <= array.max
      # begin
        raise TriangleError
      # rescue TriangleError => error
        # puts error.message
    #  end
    elsif array.uniq.length == 1
      :equilateral
    elsif array.uniq.length == 2
      :isosceles
    elsif array.uniq.length == 3
      :scalene
    end
  end

  class TriangleError < StandardError
    def message
      puts "not a triangle"
    end
  end

end
