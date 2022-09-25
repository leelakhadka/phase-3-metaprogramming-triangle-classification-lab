class Triangle
  attr_accessor :kind, :equilateral, :isosceles, :scalene

  def initialize(side1, side2, side3)

    if (side1 < 0 || side2 < 0 || side3 < 0) || (side1 == 0 && side2 == 0 && side3 == 0) || !((side1+side2)>side3 && (side1+side3)>side2 && (side2+side3)>side1)
      begin
        raise TriangleError
      end
    end

    if side1 == side2 && side1 == side3 && side2 == side3
      @kind = :equilateral
    elsif side1 == side2 || side1 == side3 || side2 == side3
      @kind = :isosceles
    else
      @kind = :scalene
    end
  end


  class TriangleError < StandardError
  end
end
