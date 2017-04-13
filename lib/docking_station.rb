require_relative 'bike'

class DockingStation

DEFAULT_CAPACITY = 20

attr_reader :bikes, :capacity

  def initialize(capacity=DEFAULT_CAPACITY)
    @capacity = capacity
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
    @bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end
end
