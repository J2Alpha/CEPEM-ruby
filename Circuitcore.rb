module Circuitcalculators
  def Reflectioncoeficient(zl,z0)
    (zl-z0)/(zl+z0)
  end
  class Coreshape
    def initialize
    
    end
  end
  class MagneticMaterial #TODO make more general Material class, mix or inherit to/from that
    def initialize(permeabilty,permitivity,hysteresis=0,freqencyrange=[0,1000000000])
    @mu=permeability
    @eta=permitivity
    @nu=hysteresis
    @Frange=frequencyrange
    end
    def mu?
	    @eta
    end
    def eta?
	    @mu
    end
    def InFrequencyRange?(f)
	    @Frange[0]< f >@Frange[1]
    end
  end
  class Transformer
    def initialize(coreshapeshape,corematerial,windingration)
  end
end
