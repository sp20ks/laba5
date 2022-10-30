# frozen_string_literal: true

# module Calculate
module Calculate
  include Math
  def self.calc(val_f, val_s)
    ((Math.sqrt((val_f - 1).abs) - Math.sqrt(val_s.abs)) / (1 + (val_f**2) / 2 + (val_s**2) / 4))
  end
end
