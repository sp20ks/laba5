# frozen_string_literal: true

require_relative "calculator/version"

require_relative "calculator"

# module Main
module Main
  include Calculate
  def self.call
    print "Enter x:"
    arg_x = gets.to_f
    print "Enter y:"
    arg_y = gets.to_f
    print "Result:"
    puts Calculate.calc(arg_x, arg_y)
  end
end

Main.call
