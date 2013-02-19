module Plasmacalculators
  include Math
  
  $K=1.38*10**(-23)#Boltzman constant
  $Evolt=11600#1 electronvolt in Kelvin
  
  def Torr_to_Pascal(t)
    t*133.32
  end
  def Torr_to_Bar(t)
    t*1.3332*10**(-3)
  end
  def Pascal_to_Bar(t)
    t*10**(-5)
  end
  def SAHAsimple(nn,t,ionizationenergy)
    sqrt(2.4*10**(21)*t**(3/2)*E**(-ionizationenergy/($K*t))*nn)
  end
  def Gasnumberdensity?(p,t) #molecules/m^3
    p/($K*t)
  end
  class Plasma #base plasma gas
    def initialize(m,pressure,temperature)
      @M=m #molecular weigth
      @P=pressure #pressure in Pa
      @t=temperature#temperature in Kelvin
      @N_total=Gasnumberdensity?(@P,@t)
      @Db=69*(@t/@N)#debye length in simple form
      @Nd=N_t*4/3*PI*@Db**3#plasma parameter
    end
    def setenergy!(evin)#potential energy in Ev
      @t=evin/$K
      @N_total=Gasnumberdensity?(@P,@t)
      @Db=69*(@t/@N)#debye length
      @Nd=N_t*4/3*PI*@Db**3#plasma parameter
    end
    def totalenergy?()#total 3d energy in plasma in Ev
      3/2*$K*@t
    end
  end
  
end
module Singleparticlemotion
  #own libs
  require_relative 'EMcore'
  include EMFcalculators
  #built in libs
  include Math

  #classes
  class Particle
    def initialize(charge, mass, position=Point.new(0,0,0), velocity=Point.new(0,0,0), acceleration=Point.new(0,0,0))
      if charge.is_a?(String) 
	      @Q=BigDecimal.new(charge)#in Coulomb
      else 
	      @Q=BigDecimal.new(charge.to_s)#in Coulomb
      end
      if mass.is_a?(String) 
	      @M=BigDecimal.new(mass)#in kg
      else 
	      @M=BigDecimal.new(mass.to_s)#in kg
      end
      @A=acceleration# in 3D m/s^2
      @V=velocity# in 3D m/s
      @P=position#in 3D m
    end
    def Charge?()
	@Q
    end
    def Mass?()
	@M
    end
    def Acceleration?()
	@A
    end
    def Velocity?()
	@V
    end
    def Position?()
	@P
    end
    def Applylorentzforce!(efield,bfield,timestep)
	f=lorentzforce(self,efield,bfield)
	if timestep.is_a?(String) 
	      t=BigDecimal.new(timestep)#in kg
	else 
	      t=BigDecimal.new(timestep.to_s)#in kg
	end
	@A=f/@M
	@V=@A*t
	@P=@V*t
    end
  end
  def lorentzforce(particle,efield,bfield)
    particle.Charge?*(efield+(particle.Velocity?.Cross(bfield)))
  end
  def cyclotronfrequency(particle,bfield)
    ((particle.Charge?)*bfield/particle.Mass?).abs()
  end
end
