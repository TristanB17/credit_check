require './lib/credit_check.rb'


class NumberTest

  def enter_number
    puts "Please enter your credit card number"
    credit_number = gets.chomp
    # CreditCheck.new(credit_number).length_verification
  end
end



credit_check = NumberTest.new.enter_number

# puts credit_check.check_number
