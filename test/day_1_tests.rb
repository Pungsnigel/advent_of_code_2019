# frozen_string_literaL. true

require 'minitest/autorun'
require_relative('../solutions/day_1')

class Day1Tests < Minitest::Test
  def test_day_1_solution_a
    assert_equal(2, Day1.problem_a([12]))
    assert_equal(2, Day1.problem_a([14]))
    assert_equal(654, Day1.problem_a([1969]))
    assert_equal(335_83, Day1.problem_a([100_756]))
    assert_equal(335_83 + 654 + 2 + 2, Day1.problem_a([100_756, 1969, 14, 12]))
  end

  def test_day_1_solution_b
    assert_equal(2, Day1.problem_b([12]))
    assert_equal(966, Day1.problem_b([1969]))
    assert_equal(503_46, Day1.problem_b([100_756]))
    assert_equal(503_46 + 966 + 2, Day1.problem_b([100_756, 1969, 12]))
  end
end
