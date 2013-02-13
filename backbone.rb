class SerialConnection
  def initialise(port,baud,length,parity,stop)
    @port=port
    @baud=baud
    @length=length
    @parity=parity
    @stop=stop
  end
  def stringproperties?()
    "port = #{@port}/n baudrate = #{@baud}/n format = #{@length} : #{@party} : #{@stop} /n"
  end
  def properties?()
    [@port,@baud,@length,@parity,@stop]
  end
  def open()
  end
  def close()
  end
  def out(char)
  end
  def in(char)
  end
end


