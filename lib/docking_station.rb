require_relative 'bike'

class DockingStation

attr_reader :bike

  def release_bike
    fail 'no bikes' unless @bike
    @bike
  end

  def dock(bike)
    fail 'too many bikes' if @bike
    @bike = bike
  end
end

# attr_reader :what_bike
#
# def initialize
#   @what_bike = Bike.new
# end
