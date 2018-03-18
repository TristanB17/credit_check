class CreditCheck
  attr_reader :credit_number

  def initialize(credit_number)
    @credit_number = credit_number
  end

  #how does this method hold the result of itself on an object
  #why in testing does the instance call for the (same) original argument,
  #but this NEEDS to have the previous method AND THEN puts something out

  def convert_to_array
    credit_number.to_i.digits
  end

   def multiply_every_other_number
     #I get that .map makes a new array out of something,
     #but why do I need 'with_index?'
     #so 'index' denotes position in the array, right?
     #why do I need to put pipes around number AND index?
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

  #How can I take input as opposed to a predetermined number?
  def check_number
    # if @credit_number.length != 16 || @credit_number.length != 15
    #   puts "Not even a credit card number, bro..."
    # end
    if add_all_numbers % 10 == 0
      # return true
     "Number is valid"
    else
      # return false
    "Number is invalid"
    end
  end
  #
  # def print_validation
  #   puts 'Number is valid' if check_number
  #   puts 'Number is invalid' if !check_number
  # end


end

# creditcheck = CreditCheck.new("4929735477250543")
# creditcheck.print_validation
# cc_2 = CreditCheck.new('5541808923795240')
# cc_2.print_validation
