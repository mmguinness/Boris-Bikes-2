require_relative "./bike.rb"

class DockingStation 
    def initialize
        @bikes = []
    end

    def release_bike
      @bikes.empty? ? (fail "No bikes available") : @bikes.pop
    end

    def dock(bike)
      @bikes.size < 20 ? @bikes << bike : (fail "docking station full") 
    end
end 