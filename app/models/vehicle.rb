class Vehicle

  def initialize(make, year)
    @make = make
    @year = year
    @speed = 0
    @lights = "off"
    @parking_brake = "on"
  end

  def make
    @make
  end

  def year
    @year
  end

  def speed
    @speed
  end

 def accelerate
   @speed = @speed + 10
 end

 def brake
   if @speed <= 6
     @speed = @speed - @speed
   else
   @speed = @speed - 7
  end
 end

 def lights
   @lights
 end

 def toggle
   if @lights == "off"
     @lights = "on"
   else
     @lights = "off"
   end
 end

 def parking_brake
   @parking_brake
 end

 def set_parking_brake
   if @parking_brake == "on"
     @parking_brake = "off"
   else
     @parking_brake = "on"
   end
 end
end
