require_relative "./bike.rb"

class DockingStation 
  attr_accessor :capacity
  DEFAULT_CAPACITY = 20
  
  def initialize(capacity=DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
    fail "No bikes available" if empty? 
    @bikes.pop
  end

  def dock(bike)
    fail "docking station full" if full?
    @bikes << bike
  end

  private
  attr_reader :bikes

  def full?
    @bikes.count >= capacity
  end

  def empty?
    @bikes.empty?
  end
end 

