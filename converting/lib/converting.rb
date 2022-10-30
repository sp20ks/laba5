# frozen_string_literal: true

# module Modif
module Modif
  # ввод строки. парсит на подстроки. возвраащает массив из строк. все ок.
  def self.enter_strings
    puts "Enter strings spliting by space:"
    strings = gets
    strings.downcase!
    strings.split(" ")
  end

  # ввод кодировки. возвращает массив. все ок.
  def self.enter_code
    puts "Enter code:"
    code = gets
    code = code.split("").map(&:to_i)
    code.delete(0)
    code
  end

  # из массива строк возвращает делает массив массивов байтов. тоже все ок.
  def self.array_of_bytes(str)
    res = []
    str.each do |word|
      res.push(word.bytes.to_a)
    end
    res
  end

  # модификация массива байтов. В метоже вызываeтся непосредственно модифицирующий метод.
  def self.mod_array(str, code)
    bytes = array_of_bytes(str)
    res = []
    endless_code = code.cycle
    bytes.each do |word|
      res.push(byte_shift(word, endless_code).pack("C*"))
    end
    res.join(" ")
  end

  # метод вызывается в цикле. в него передается слово и сам код. сдвиг байтов на code.
  def self.byte_shift(b_array, endless_code)
    buf = []
    b_array.each do |byte|
      code = endless_code.next
      buf << if byte + code > 122 && byte <= 122
               (96 + code)
             else
               (byte + code)
             end
    end
    buf
  end
end
