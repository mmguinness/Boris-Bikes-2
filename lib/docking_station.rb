require_relative "./bike.rb"

class DockingStation 
    attr_reader :bike

    def release_bike
      @bike == nil ? (fail "No bikes available") : Bike.new
    end

    def dock(bike)
      @bike = bike
    end

end 