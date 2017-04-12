require_relative 'bike'

class DockingStation

attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail 'no bikes' unless @bikes
    @bikes
  end

  def dock(bike)
    fail 'too many bikes' if @bikes
    @bikes = bike
  end
end
