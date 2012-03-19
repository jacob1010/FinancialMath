require 'test/unit'
require 'FinancialCalc'

class FinancialCalcTest < Test::Unit::TestCase


    def test_ACCURINT_one
      #actual/actual 
      assert_in_delta(38.0404756185443, FinancialCalc.ACCRINT("12/14/2008","07/01/2009","05/01/2009", 0.10, 1000, 2, 1), 0.001, "wrong! answer was supposed to be:")
      
    end
    
    def test_ACCURINT_three
      #actual/365
      assert_in_delta(37.8082191780822, FinancialCalc.ACCRINT("12/14/2008","07/01/2009","05/01/2009", 0.10, 1000, 2, 3), 0.001, "wrong! answer was supposed to be:")
    end
    
    def test_english_hello
      assert_equal "hello world", FinancialCalc.hi("english")
    end


end
