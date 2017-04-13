require_relative 'bike'

class DockingStation

attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail 'no bikes' if empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'too many bikes' if full?
    @bikes << bike
  end

  private

  def full?
    @bikes.count >= 20
  end

  def empty?
    @bikes.empty?
  end
end
