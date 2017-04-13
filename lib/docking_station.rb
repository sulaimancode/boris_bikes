require_relative 'bike'

class DockingStation

attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail 'no bikes' if @bikes.empty?
    @bikes
  end

  def dock(bike)
    fail 'too many bikes' if @bikes.count >= 20
    @bikes << bike
  end
end
