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

	# method 'get_radius' returns the radius calculated from the diameter received
	def get_radius(perimeter)
		raise unless perimeter.is_a?(Numeric) && perimeter >= 0
		perimeter / @@Pi / 2
	end
end