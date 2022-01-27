require_relative "./bike.rb"

class DockingStation 
    # attr_reader :bikes

    def initialize
        @bikes = []
    end

    def release_bike
      @bikes == [] ? (fail "No bikes available") : @bikes.pop
    end

    def dock(bike)
      @bikes.size < 20 ? @bikes << bike : (fail "docking station full") 
    end

end 