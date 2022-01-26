require_relative "./bike.rb"

class DockingStation 
    
    attr_reader :bikes

    def initialize
        @bikes = []
    end    
    
    def release_bike
        raise "no bikes available" if @bikes.empty?
        Bike.new
    end

    def dock(bike)
        @bikes << bike
    end
end 