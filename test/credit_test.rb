#putting appropriate requires
require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_check'
require 'pry'

#setting class to pull from Minitest, a child of Test
class TestCreditCheck < Minitest::Test

#this method ensures that the class "CreditCheck" exists
  def test_does_credit_check_exist
    creditcheck = CreditCheck.new("4929735477250543")
    #says that instance of CreditCheck is present
    assert_instance_of CreditCheck , creditcheck
  end

  #this method checkes to see if the class CreditCheck has any attributes
  def test_does_class_have_attributes
    creditcheck = CreditCheck.new("4929735477250543")
    #This confirms that the CreditCheck class with an iteration of ("4929735477250543") is true
    assert_equal "4929735477250543", creditcheck.credit_number
  end

  def test_length_verification
    creditcheck = CreditCheck.new("4929735477250543")
    assert_equal "4929735477250543", creditcheck.length_verification
  end

  #This is a method for converting the new creditcheck number to an array
  def test_convert_to_array
    creditcheck = CreditCheck.new("4929735477250543")

    assert_equal [3, 4, 5, 0, 5, 2, 7, 7, 4, 5, 3, 7, 9, 2, 9, 4], creditcheck.convert_to_array
  end

  def test_multiply_every_other_number
    creditcheck = CreditCheck.new("4929735477250543")
    #this makes it easier to write
    result = [3, 8, 5, 0, 5, 4, 7, 14, 4, 10, 3, 14, 9, 4, 9, 8]
    assert_equal result, creditcheck.multiply_every_other_number
  end

  def test_add_double_digits
    creditcheck = CreditCheck.new("4929735477250543")
    result = [3, 8, 5, 0, 5, 4, 7, 5, 4, 1, 3, 5, 9, 4, 9, 8]
    assert_equal result, creditcheck.add_double_digits
  end

  def test_sum_all_digits
    creditcheck = CreditCheck.new("4929735477250543")

    assert_equal 80, creditcheck.add_all_numbers
  end

  def test_check_number_is_valid
    creditcheck = CreditCheck.new("4929735477250543")
    cc_2 = CreditCheck.new('5541808923795240')
    amer_ex_1 = CreditCheck.new("342804633855673")
    assert_equal "Number is valid", creditcheck.check_number
    assert_equal "Number is valid", cc_2.check_number
    assert_equal "Number is valid", amer_ex_1.check_number
  end

  def test_check_number_is_invalid
    cc_1 = CreditCheck.new("5541801923795240")
    amer_ex_2 = CreditCheck.new("342801633855673")
    assert_equal "Number is invalid", cc_1.check_number
    assert_equal "Number is invalid", amer_ex_2.check_number
  end

  # def test_print_validation
  # end
end
