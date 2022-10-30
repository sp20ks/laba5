# frozen_string_literal: true

require_relative "ordering"

# module Main
module Main
  include Modification

  def self.create_array_from_stdin!
    puts "Enter array spliting numbers by space:"
    input = gets
    input.split(" ").map(&:to_i)
  end

  def self.call
    arr = Main.create_array_from_stdin!
    if Modification.non_decreasing?(arr)
      puts "Array is non-decreasing without violations"
    else
      puts "Array after modification:"
      puts Modification.make_modify(arr).join(" ")
    end
  end
end

Main.call
