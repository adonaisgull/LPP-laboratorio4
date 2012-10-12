#
# circle.rb
# Class Circle
# 
# Notes: 
# Perimeter = PI * diameter
# Radius = diameter / 2
#

class Circle
	
	@@Pi = 3.14

	# method 'calc_radius_by_perimiter' returns the radius calculated from the diameter received
	def self.calc_radius_by_perimiter(perimeter)
		raise unless perimeter.is_a?(Numeric) && perimeter >= 0
		perimeter / @@Pi / 2
	end
end