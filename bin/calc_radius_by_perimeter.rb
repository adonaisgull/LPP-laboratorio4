require "../lib/circle.rb"

perimeter = (ARGV.shift || '' ).to_f

puts Circle.calc_radius_by_perimiter perimeter