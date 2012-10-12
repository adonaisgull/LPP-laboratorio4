#
# tc_circle.rb
#

require "test/unit"
require "circle.rb"

class TestCircle < Test::Unit::TestCase

	def test_typecheck
		assert_raise( RuntimeError ) { Circle.calc_radius_by_perimiter ('string' ) }
		assert_raise( RuntimeError ) { Circle.calc_radius_by_perimiter (1..5) }
		assert_raise( RuntimeError ) { Circle.calc_radius_by_perimiter ([1, 2, 3]) }
	end

	def test_negative_number
		assert_raise ( RuntimeError ) { Circle.calc_radius_by_perimiter(-10) }
	end

	def test_correct_result
		assert_equal(0, Circle.calc_radius_by_perimiter(0))
		assert_equal(2.5, Circle.calc_radius_by_perimiter(15.7))
		assert_equal(0.9554140127388535, Circle.calc_radius_by_perimiter(06))
		assert_equal(0.9554140127388535, Circle.calc_radius_by_perimiter(0b110))
		assert_equal(0.9554140127388535, Circle.calc_radius_by_perimiter(0x6))
	end
end
