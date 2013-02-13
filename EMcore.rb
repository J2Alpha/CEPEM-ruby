module EMFcalculators

  require 'matrix'
  require 'bigdecimal'
  require "bigdecimal/math"

  include BigMath
  include Math

  puts("EMFcalculators module loaded")

  $Mu0=4*PI*10**(-7) #magnetic permeabilility of free space
  $C=299792458 #speed of light in m/s

  class Simplecoil#simple coil, magnetic field in middle
    def initialize(nrturns,radius)
      @N=nrturns
      @R=radius
    end
    def emfieldstrength(d, i )
      ($Mu0*@N*(@R**2)*i)/(2*((@R**2)*(d**2))**(3/2))
    end
  end
  #############################################
  #physical objects whole and discrete forms  #
  #############################################

  class Medium
    def initialize(eta,mu,pressure)
      @Eta=eta#capacitivity of the medium F/m^3
      @Mu=mu#inductivity of the medium H/m
      @Pressure=pressure#pressure in Pa
    end
  end
  class WireSegment
    def initialize(length, diameter, resistance,current,angularfrequency,phase)
      @L=length #total length in m
      @D=diameter #diameter in m
      @Rs=@L*resistance # segments resistanc in ohm
      @I=current
      @w=angularfrequency
      @phi=phase
    end
  end
  class Wire
    def initialize(length,diameter, resistance)
      @L=length #total length in m
      @D=diameter #diameter in m
      @R=resistance # resistanc per meter in ohm/m
    end
    def Discretise(wavelength)
      @DL=@L/(wavelength/10)
      WireSegment piece=WireSegment.new(@DL,@D,@R,0,0,0)
      @segments=Array.new(@L/@DL,piece)
    end
  end
  ################################
  # geometrics                   #
  ################################
  class Point #also used as vector container since thats essentially the same
    def initialize(x, y, z)
	if x.is_a?(Numeric)
	 @C=[BigDecimal(x.to_s),BigDecimal(y.to_s),BigDecimal(z.to_s)]
      	elsif x.is_a?(String)
	 @C=[BigDecimal(x),BigDecimal(y),BigDecimal(z)]
	end
    end
    def X()
      @C[0]
    end
    def Y()
      @C[1]
    end
    def Z()
      @C[2]
    end
    def C()
      @C
    end
    def Distance(point=Point.new(0,0,0))
      BigMath::sqrt((self.X()-point.X())**BigDecimal(2.to_s)+(self.Y()-point.Y())**BigDecimal(2.to_s)+(self.Z()-point.Z())**BigDecimal(2.to_s),point.X().precs[0])
    end
    def Dot(point)
	    (self.X()*point.X())+(self.Y()*point.Y())+(self.Z()*point.Z())
    end
    def +(point)
	    return Point.new( (self.X()+point.X()), (self.Y()+point.Y()), (self.Z()+point.Z()))
    end
    def -(point)
	    return Point.new( (self.X()-point.X()), (self.Y()-point.Y()), (self.Z()-point.Z()))
    end 
    def *(p) 
	if p.is_a?(Numeric) #scalar
            return Point.new(self.X()*BigDecimal(p.to_s), self.Y()*BigDecimal(p.to_s), self.Z()*BigDecimal(p.to_s))
        elsif p.is_a?(Point) #dot
            return (self.X()*p.X())+(self.Y()*p.Y())+(self.Z()*p.Z())
	end
    end
    def /(p)
	if p.is_a?(Numeric) #scalar
            return Point.new(self.X()/BigDecimal(p.to_s), self.Y()/BigDecimal(p.to_s), self.Z()/BigDecimal(p.to_s))
        elsif p.is_a?(Point) #dot TODO: fix it, does this even exist? its certainly not commutative (coerce unsafe)
            return (self.X()/p.X())+(self.Y()/p.Y())+(self.Z()/p.Z())
	end
    end
    def Cross(p)
	if p.is_a?(Point)
	   return Point.new((self.Y()*p.Z()-self.Z()*p.Y()),(self.Z()*p.X()-self.X()*p.Z()),(self.X()*p.Y()-self.Y()*p.X()))
	end
    end
    def abs()
	   return point.new(BigMath::sqrt(self.X()**BigDecimal(2.to_s)), BigMath::sqrt(self.Y()**BigDecimal(2.to_s)), BigMath::sqrt(self.Z()**BigDecimal(2.to_s))) 
    end
    def coerce(other)
        return self, other
    end    
  end
  Vector3=Point #behaves like a class alias in case vector reads beter
  class Line
    def initialize(startpoint,endpoint)
	@Odd=startpoint
      	@End=endpoint
	@Length=(startpoint.Distance(endpoint))
    end
    def Midpoint?()#TODO make into bigdecimal correct before implemetning line sources
      Point.new(BigDecimal.new((@Odd.X()+@End.X())/2) , BigDecimal.new((@Odd.Y()+@End.Y())/2), BigDecimal.new((@Odd.Z()+@End.Z())/2))
    end
    def To_Vector(normalised=false)#point based vector not marix:vector
      return Point.new((@End.X-@Odd.X)/@Length,(@End.Y-@Odd.Y)/@Length,(@End.Z-@Odd.Z)/@Length)unless normalised==false
      return Point.new((@End.X-@Odd.X),(@End.Y-@Odd.Y),(@End.Z-@Odd.Z)) 
 
    end
    def Length?()
      @Length
    end
    def Distance_To_Point?(point=Point.new(0,0,0))
	    n=(To_Vector(true))      #normalised vector representation of line
	    templine=Line.new(point,@Odd) #vector from the point to the origin of the line
	    pa=templine.To_Vector()
	    return (pa-((pa*n)*n)).Distance
    end
  end
  ######################################
  #fields and radiated energy          #
  ######################################
  class PointFieldGenerator
    def initialize(strength,point)
      @E0=strength
      @Origin=point
    end
    def Strength_at(point)
      E0/(@Origin.distance(point))
    end
  end

  ######################################
  #waveforms and exitation             #
  ######################################

  class Sinewave
    def initialize(potential,frequency,power)
      @V0=potential #peak voltage
      @Vrms=sqrt(2)*potential
      @P=power #totes power in to be changed into more usefull form
      @I0=power/@E0 #max current
      @Frequency=frequency
      @gamma=$C/frequency #wavelength (ruby's infinity safe)
      @w=2*PI*frequency #angular frequency
    end
  end
  class DC
    def initialize(potential,power)
      @V0=potential
      @P=power
      @I0=power/@E0
    end
  end
  def Fieldtype?(distance,wavelength,antennalength)#1 reactive near field,2 radiative near field or 3 far field of antenna
    "3 far field" unless (distance<(2*(antennalength**2)/wavelength))
    (distance<(0.62*((antennalength**3)/wavelength)**(1/2))) ? "1 reactive near field" : "2 radiative near field"  
  end
  def Isotropicfieldstrength(p,r) #isotropic power density in W/m^2
    p/(4*PI*r**2)
  end  
end
