# frozen_string_literal: true

require "test_helper"
require "/home/ksusha/uni/labs_web/laba5/ordering/lib/ordering"

# class for testing
class TestOrdering < Minitest::Test
  # testing make_modify
  def test_first
    assert_equal([33, 33, 39, 30, 31, 29, 30, 2, 35, 1, 2, 3, 4],
                 Modification.make_modify([33, 33, 39, 1, 2, 3, 4, 2, 35, 30, 31, 29, 30]))
  end

  # make a random non-decreasing array
  def random_non_decreasing_array
    Array.new(5) { rand(-100..100) }.sort
  end

  # testing non_decreasing?
  def test_second
    assert_equal(true, Modification.non_decreasing?(random_non_decreasing_array))
  end
end
