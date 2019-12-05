# frozen_string_literaL. true

require 'minitest/autorun'
require_relative('../solutions/day_2')

class Day2Tests < Minitest::Test
  def test_day_2_solution_a
    assert_equal(3500, Day2::IntcodeComputer.new([1,9,10,3,2,3,11,0,99,30,40,50]).compute)
    assert_equal(2, Day2::IntcodeComputer.new([1, 0, 0, 0, 99]).compute)
    assert_equal(2, Day2::IntcodeComputer.new([2, 3, 0, 3, 99]).compute)
    assert_equal(2, Day2::IntcodeComputer.new([2, 4, 4, 5, 99, 0]).compute)
    assert_equal(30, Day2::IntcodeComputer.new([1, 1, 1, 4, 99, 5, 6, 0, 99]).compute)
  end

  def test_day_2_solution_b; end
end
