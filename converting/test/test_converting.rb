# frozen_string_literal: true

require "test_helper"

# class for testing
class TestConverting < Minitest::Test
  # testing array_of_bytes
  def test_first
    assert_equal([[97, 98, 115], [97, 98, 115]], Modif.array_of_bytes(%w[abs abs]))
  end

  def match_res
    arr_test = [Faker::Number.between(from: 97, to: 122),
                Faker::Number.between(from: 97, to: 122),
                Faker::Number.between(from: 97, to: 122)]
    code_test = [Faker::Number.digit, Faker::Number.digit]
    if Modif.byte_shift(arr_test, code_test.cycle)[0] <= 122 && Modif.byte_shift(arr_test, code_test.cycle)[1] <= 122
      true
    else
      false
    end
  end

  # testing for byte_shift. checking for the correct shift.
  def test_second
    assert(match_res)
  end
end
