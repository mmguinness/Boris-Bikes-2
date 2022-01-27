require "docking_station"
require "bike"

describe DockingStation do 

  describe "#release_bike" do
    
    it { expect { subject.release_bike }.to raise_error("No bikes available") }
    # it "should respond to release_bike" do
    #     docking_station = DockingStation.new
    #     expect(docking_station).to respond_to(:release_bike)
    # end
    it { expect(DockingStation.new).to respond_to(:release_bike) }   

    # it "will return error when calling 'release bike' method if there are no bikes available" do
    #     docking_station = DockingStation.new
    #     expect { docking_station.release_bike }.to raise_error("no bikes available")
    # end  

    it "will release a bike if one exists" do
        docking_station = DockingStation.new
        docking_station.dock(Bike)
        expect(docking_station.release_bike).to be_an_instance_of(Bike)
    end 
  end

  describe "#dock" do
    it 'docks something' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq bike
    end

    it { expect(DockingStation.new).to respond_to(:dock).with(1).argument }
    it "should  return error if docking station contains a bike" do
      bike = Bike.new
      subject.dock(bike)
      bike2 = Bike.new
      expect { subject.dock(bike2) }.to raise_error("docking station full")
    end
  end
end 
