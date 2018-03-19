# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
require 'byebug'
def triangle(*sides)
  sides.sort!
  raise TriangleError unless valid_triangle?(sides)
  a, b, c = sides
  if a == c
    :equilateral
  elsif b == c
    :isosceles
  else
    :scalene
  end
end

private

def valid_triangle?(sides)
  return false if sides.any?(&:negative?)
  sides[2] < sides[0] + sides[1]
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
