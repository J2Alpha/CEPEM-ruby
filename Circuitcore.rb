module Circuitcalculators
    require 'bigdecimal'
    require "bigdecimal/math"

    include BigMath
    include Math

  def Reflectioncoeficient(zl,z0)
    (zl-z0)/(zl+z0)
  end
  class Coreshape
    def initialize(type,shapefactors)
	@Type=type
        case type
	when 't'
		@Rinner=shapefactors[0]
		@Router=shapefactors[1]
		@Height=shapefactors[2]
		@Area=(@Router-@Rinner)*@Height
		@Volume=PI*(@Router**BigDecimal.new(2.to_s)-@Rinner**BigDecimal.new(2.to_s))*@Height
	end
    end
    def Type?
	    @Type
    end
    def Area?
	    @Area
    end
end
class Material
	def iniialize(density=0)
		@Density=density
	end
end
class MagneticMaterial < Material
    def initialize(alvalue,density=0,permeability=0,saturationlimit=0.5,permitivity=0,hysteresis=0,frequencyrange=[0,1000000000])
    super(density) #initialize superclass material
    @mu=permeability
    @eta=permitivity
    @nu=hysteresis
    @Frange=frequencyrange
    @Satur=saturationlimit
    @Al=alvalue#Al value: combination of permeability, permitivity and path length efined by manufacturer
    end
    def Eta?
	    @eta
    end
    def Mu?
	    @mu
    end
    def InFrequencyRange?(f)
	    @Frange[0]< f >@Frange[1]
    end
    def MaxSaturation?
	    @Satur
    end
    def Al?
	    @Al
    end
  end
  class Transformer
    def initialize(coreshape , corematerial , windingratio , voltage, frequency, bipolar=false)
	    @CS=coreshape
	    @CM=corematerial
	    @WR=windingratio #Ns/Np
	    @VPri=voltage
	    @VSec=@VPri*@WR
	    @F=frequency
	    @Maxflux=@CS.Area?*@CM.MaxSaturation?
	    if bipolar
		    @Maxflux=@Maxflux*BigDecimal.new(2.to_s)
	    end
	    @TurnsPri=((@VPri*BigDecimal.new(2.to_s)/(@F))/@Maxflux).round
	    @TurnsSec=@TurnsPri*@WR
	    @LPri=@CM.Al?*@TurnsPri**BigDecimal.new(2.to_s)
    end
    def PrimaryTurns?
	    @TurnsPri
    end
    def SecondaryTurns?
	    @TurnsSec
    end
    def SecondaryVoltage?
	    @Vsec
    end
    def PrimaryInductance?
	    @LPri
    end
  end

  
puts("circuitcalculators module loaded")

end
