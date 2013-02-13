#Requires
require_relative 'EMcore'
require_relative 'Circuitcore'
require_relative 'Plasmacore'
#modules
include EMFcalculators
include Circuitcalculators
include Singleparticlemotion

#cocoil=Simplecoil.new(1,2)
#puts Reflectioncoeficient(1,2)
#puts Fieldtype?(1,1,1)
p1=Point.new(1,0,0)
p2=Point.new(0,1,0)
p3=Point.new(1,-1,-1)
line1=Line.new(p1,p2)
#puts p1.X()
#puts p2.Y()
#puts line1.Length?
#puts line1.Midpoint?.C
#puts line1.To_Vector(true).C
#puts la=line1.Distance_To_Point?(p3)
#puts la.is_a?(BigDecimal)
#puts p1.cross(p2).C

#puts p1.Cross(p2).C
v=Point.new(0,10,0)
e=Point.new(0,10,0)
q=BigDecimal.new("1")
b=Point.new(5,0,0)
puts (q*(e+(v.Cross(b)))).C


# require 'SVG/Graph/Line'
#   fields = %w(Jan Feb Mar);
#   data_sales_02 = [12, 45, 21]
#   data_sales_03 = [15, 30, 40]

#   graph = SVG::Graph::Line.new({
#     :height => 500,
#     :width => 300,
#     :fields => fields,
#   })

#   graph.add_data({
#     :data => data_sales_02,
#     :title => 'Sales 2002',
#   })

#   graph.add_data({
#     :data => data_sales_03,
#     :title => 'Sales 2003',
#   })

#   print "Content-type: image/svg+xml\r\n\r\n";
#   print graph.burn();
