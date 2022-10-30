# frozen_string_literal: true

# rubocop:disable Metrics/MethodLength

# module Modification
module Modification
  def self.non_decreasing?(array)
    prev_elem = array[0]
    array.each do |elem|
      return false unless elem >= prev_elem

      prev_elem = elem
    end
    true
  end

  def self.make_modify(array)
    res = []
    buf = []
    prev_elem = array[0]
    array.each do |elem|
      if elem < prev_elem
        res.push(buf)
        buf = []
      end
      buf.push(elem)
      prev_elem = elem
    end
    res.push(buf)
    res.sort_by { |sub_arr| -sub_arr[0] }.flatten
  end
end

# rubocop:enable Metrics/MethodLength
