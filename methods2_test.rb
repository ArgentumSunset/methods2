require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative 'methods2'

class Methods2Test < MiniTest::Test
	def setup
		@m = Class.new do
     include Methods2
   	end.new
	end

	def test_elevenish
		assert_equal true, @m.elevenish?(22)
		assert_equal false, @m.elevenish?(5)
		assert_equal true, @m.elevenish?(12)
		assert_equal true, @m.elevenish?(-11)
		assert_equal true, @m.elevenish?(0)
	end

	def test_ice_cream_party
		assert_equal 0, @m.ice_cream_party(4,1)
		assert_equal 1, @m.ice_cream_party(6,7)
		assert_equal 2, @m.ice_cream_party(8,19)
	end

	def test_successful_squirrel_party
		assert_equal false, @m.successful_squirrel_party?(32, false)
		assert_equal false, @m.successful_squirrel_party?(32, true)
		assert_equal true, @m.successful_squirrel_party?(47, false)
		assert_equal false, @m.successful_squirrel_party?(72, false)
		assert_equal true, @m.successful_squirrel_party?(72, true)
	end

	def test_ticket
		assert_equal 10, @m.ticket(5,5,1)
		assert_equal 5, @m.ticket(5,25,15)
		assert_equal 0, @m.ticket(1,1,1000)
	end

	def test_in_order
		assert_equal true, @m.in_order?(1,2,3,false)
		assert_equal true, @m.in_order?(2,1,3,true)
		assert_equal false, @m.in_order?(1,2,1,false)
		assert_equal false, @m.in_order?(2,1,3,false)
		assert_equal false, @m.in_order?(1,1,1,false)
	end

	def test_less_by_ten
		assert_equal true, @m.less_by_ten?(15,4,4)
		assert_equal false, @m.less_by_ten?(10,10,10)
		assert_equal true, @m.less_by_ten?(4,15,4)
		assert_equal true, @m.less_by_ten?(4,4,15)
		assert_equal true, @m.less_by_ten?(10,10,-10)
	end
end
