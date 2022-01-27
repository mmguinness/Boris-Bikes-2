require "docking_station"
require "bike"

describe DockingStation do 

  describe "#release_bike" do
    
    it { expect { subject.release_bike }.to raise_error("No bikes available") }
   
    it { expect(DockingStation.new).to respond_to(:release_bike) }    

  end

  describe "#dock" do
    it 'adds one bike to the docking station' do
      bike = Bike.new
      expect(subject.dock(bike).count).to eq(1)
    end

    it { expect(DockingStation.new).to respond_to(:dock).with(1).argument }

    it "should raise an error if a 21st bike is added" do
      20.times { subject.dock Bike.new }
      bike = Bike.new
      expect { subject.dock(bike) }.to raise_error("docking station full")
    end
  end
end 
