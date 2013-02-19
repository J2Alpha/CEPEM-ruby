#Requires
require_relative 'EMcore'
require_relative 'Circuitcore'
require_relative 'Plasmacore'
#modules
include EMFcalculators
include Circuitcalculators
include Singleparticlemotion
require 'csv'
#cocoil=Simplecoil.new(1,2)
#puts Reflectioncoeficient(1,2)
#puts Fieldtype?(1,1,1)

timing=Time.now

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
#puts p1.Cross(p2).C

v=Point.new("0","0","0")
e=Point.new("0","2e6","0")
p=Particle.new("9.109e-31","-1.602e-19")#electron
b=Point.new("0.1","0","0")

CSV.open("paths.csv", "wb") do |csv|
    csv << ["nr","positionX","positionY","positionZ","velocityX","velocityY","velocityZ", "accelerationX", "accelerationY", "accelerationZ"]
    csv << ["","m","m","m","m/s","m/s","m/s","m/s^2","m/s^2","m/s^2"]
    i=1
    t0=0
    while i<100
    p.Applylorentzforce!(e,b,"1e-6")
    csv <<[i.to_s,p.Position?.C[0],p.Position?.C[1],p.Position?.C[2],p.Velocity?.C[0],p.Velocity?.C[1],p.Velocity?.C[2],p.Acceleration?.C[0],p.Acceleration?.C[1],p.Acceleration?.C[2]]
    i +=1
    if i%10==0
	puts i
    end
    end
end
#mat1=MagneticMaterial.new(BigDecimal.new(5400.to_s),BigDecimal.new(1000.to_s),BigDecimal.new(4300.to_s),BigDecimal.new(0.38.to_s))
#sp=[BigDecimal.new(0.0405.to_s),BigDecimal.new(0.0585.to_s),BigDecimal.new(0.0185.to_s)]
#shp1=Coreshape.new('t',sp)
#tran1=Transformer.new(shp1,mat1,BigDecimal.new(10.to_s),BigDecimal.new(12.to_s),BigDecimal.new(100000.to_s),true)
#puts shp1.Area?
#puts mat1.Al?
#puts tran1.PrimaryTurns?
#puts tran1.SecondaryTurns?

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
