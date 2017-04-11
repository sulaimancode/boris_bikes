require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it "Should create a bike" do
    expect(subject.release_bike).to be_a Bike
  end

  it "Bike should be working" do
    expect(subject.release_bike).to be_working
  end

  it { is_expected.to respond_to :dock_bike }

end
