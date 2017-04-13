require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it "Bike should be working" do
    bike = Bike.new
    expect(bike).to be_working
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bikes).to eq [bike]

  end

  describe '#release_bike' do
    it 'raise error when no bikes'  do
      expect { subject.release_bike }.to raise_error  'no bikes'
    end


  end

  describe '#dock' do
    it 'raise error when too many bikes' do
    20.times { subject.dock(Bike.new) }
      expect { subject.dock Bike.new }.to raise_error 'too many bikes'
    end
  end
end
