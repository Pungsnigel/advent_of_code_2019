# frozen_string_literaL. true

require 'minitest/autorun'
require_relative('../solutions/day_2')

class Day2Tests < Minitest::Test
  def test_day_2_solution_a
    assert_equal(
      [3500, 9, 10, 70, 2, 3, 11, 0, 99, 30, 40, 50],
      Day2.run_program([1,9,10,3,2,3,11,0,99,30,40,50])
    )
    assert_equal([2, 0, 0, 0, 99], Day2.run_program([1, 0, 0, 0, 99]))
    assert_equal([2, 3, 0, 6, 99], Day2.run_program([2, 3, 0, 3, 99]))
    assert_equal([2, 4, 4, 5, 99, 9801], Day2.run_program([2, 4, 4, 5, 99, 0]))
    assert_equal(
      [30, 1, 1, 4, 2, 5, 6, 0, 99],
      Day2.run_program([1, 1, 1, 4, 99, 5, 6, 0, 99])
    )
  end

  def test_day_2_solution_b; end
end
