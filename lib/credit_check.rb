# require_relative 'credit_runner'
require 'pry'

class CreditCheck
  attr_reader :credit_number

  def initialize(credit_number)
    @credit_number = credit_number

  end

  def length_verification

    loop do
      if @credit_number.length == 16 || @credit_number.length == 15
        @credit_number = credit_number
        break
      else
        puts "Please try again"
        @credit_number = gets.chomp
      end
    end
    @credit_number
  end


  def convert_to_array
    credit_number.to_i.digits
  end

   def multiply_every_other_number
    convert_to_array.map.with_index do |number, index|
      if index.odd?
        number * 2
      else
        number
      end
    end
  end

  def add_double_digits
    multiply_every_other_number.map do |number|
      if number > 9
        number - 9
      else
        number
      end
    end
  end

  def add_all_numbers
    add_double_digits.sum
  end

  def check_number
    if add_all_numbers % 10 == 0
      # return true
      "Number is valid"
    else
      # return false
      "Number is invalid"
    end
  end

end
