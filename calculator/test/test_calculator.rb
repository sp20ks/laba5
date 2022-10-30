# frozen_string_literal: true

require "test_helper"
require "/home/ksusha/uni/labs_web/laba5/calculator/lib/calculator"

# class for testing calculator
class TestCalculator < Minitest::Test
  def test_first
    assert_in_delta 0, Calculate.calc(0, 1), 0.00001
  end

  def test_second
    assert_in_delta 0.333333, Calculate.calc(2, 0), 0.00001
  end
end
