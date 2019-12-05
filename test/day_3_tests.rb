# frozen_string_literaL. true

require "minitest/autorun"
require_relative('../solutions/day_3')

class Day3Tests < Minitest::Test
  def test_day_3_solution_a
    line_a = "R75,D30,R83,U83,L12,D49,R71,U7,L72"
    line_b = "U62,R66,U55,R34,D71,R55,D58,R83"
    assert_equal(159, Day3.problem_a([line_a, line_b]))

    line_a = "R98,U47,R26,D63,R33,U87,L62,D20,R33,U53,R51"
    line_b = "U98,R91,D20,R16,D67,R40,U7,R15,U6,R7"
    assert_equal(135, Day3.problem_a([line_a, line_b]))
  end

  def test_day_3_solution_b
    line_a = "R75,D30,R83,U83,L12,D49,R71,U7,L72"
    line_b = "U62,R66,U55,R34,D71,R55,D58,R83"
    assert_equal(610, Day3.problem_b([line_a, line_b]))

    line_a = "R98,U47,R26,D63,R33,U87,L62,D20,R33,U53,R51"
    line_b = "U98,R91,D20,R16,D67,R40,U7,R15,U6,R7"
    assert_equal(410, Day3.problem_b([line_a, line_b]))
  end
end
