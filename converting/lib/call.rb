# frozen_string_literal: true

require_relative "converting"

# module Main
module Main
  include Modif

  def self.call
    Modif.mod_array(Modif.enter_strings, Modif.enter_code)
  end
end

puts Main.call
