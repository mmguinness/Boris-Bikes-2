require "docking_station"
require "bike"

describe DockingStation do 
  
  describe 'initialization' do
    it "has a varibale capacity" do
      docking_station = DockingStation.new(50)
      50.times { docking_station.dock Bike.new }
      expect{ docking_station.dock(Bike.new) }.to raise_error "docking station full"
    end
  end

  it "has a default capacity" do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  describe 'initialization' do
    subject { DockingStation.new }
    let(:bike) { Bike.new }
    it 'defaults capacity' do
      described_class::DEFAULT_CAPACITY.times do
        subject.dock(bike)
      end
    expect{ subject.dock(bike) }.to raise_error "docking station full"
    end
  end


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
      DockingStation::DEFAULT_CAPACITY.times { subject.dock Bike.new }
      bike = Bike.new
      expect { subject.dock(bike) }.to raise_error("docking station full")
    end
  end
end 
