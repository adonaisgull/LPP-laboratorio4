#
# tc_circle.rb
#

require "test/unit"
require "../lib/circle.rb"

class TestCircle < Test::Unit::TestCase

	def test_typecheck
		assert_raise( RuntimeError ) { Circle.get_radius ('string' ) }
		assert_raise( RuntimeError ) { Circle.get_radius (1..5) }
		assert_raise( RuntimeError ) { Circle.get_radius ([1, 2, 3]) }
	end

	def test_negative_number
		assert_raise ( RuntimeError ) { Circle.get_radius(-10) }
	end

	def test_correct_result
		assert_equal(0, Circle.get_radius(0))
		assert_equal(2.5, Circle.get_radius(15.7))
		assert_equal(0.9554140127388535, Circle.get_radius(06))
		assert_equal(0.9554140127388535, Circle.get_radius(0b110))
		assert_equal(0.9554140127388535, Circle.get_radius(0x6))
	end
end
