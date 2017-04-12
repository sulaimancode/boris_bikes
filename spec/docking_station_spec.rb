require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it "Should create a bike" do
    expect(subject.release_bike).to be_a Bike
  end

  it "Bike should be working" do
    expect(subject.release_bike).to be_working
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike

  end

  describe '#release_bike' do
    it 'raise error when no bikes'  do
      expect { subject.release_bike }.to raise_error  'no bikes'
    end
  end
end
