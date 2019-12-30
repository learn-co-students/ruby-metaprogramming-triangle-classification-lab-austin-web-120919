require 'pry'
class Triangle
  # write code here

  attr_reader :side_a, :side_b, :side_c

  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def kind
    if side_a <= 0 || side_b <= 0 || side_c <= 0
      raise TriangleError
    elsif side_a + side_b <= side_c || side_a + side_c <= side_b || side_b + side_c <= side_a
      raise TriangleError
    elsif side_a == side_b && side_a == side_c
      return :equilateral
    elsif side_a == side_b || side_a == side_c || side_b == side_c
      return :isosceles
    else return :scalene
    end
  end

  class TriangleError < StandardError

    def side_equals_zero
      "Side cannot be equal to zero"
    end

    def triangle_inequality
      "The sum of the lengths of any two sides of a triangle always exceeds the length of the third side."
    end

  end

end
