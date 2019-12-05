# frozen_string_literaL. true

require 'minitest/autorun'
require_relative('../solutions/day_4')
class Day4Tests < Minitest::Test
  def test_day_4_solution_a
    assert Day4.valid_password?(111_111)
    assert !Day4.valid_password?(223_450)
    assert !Day4.valid_password?(123_789)
    assert !Day4.valid_password?(500_000)
    assert !Day4.valid_password?(123_456)
    assert Day4.valid_password?(123_345)
  end

  def test_day_4_solution_b
    assert !Day4.valid_password?(111_111, false)
    assert !Day4.valid_password?(223_450, false)
    assert !Day4.valid_password?(123_789, false)
    assert !Day4.valid_password?(500_000, false)
    assert !Day4.valid_password?(123_456, false)
    assert Day4.valid_password?(123_345, false)
  end
end
