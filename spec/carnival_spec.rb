require "./lib/visitor"
require './lib/ride'
require './lib/carnival'

describe Carnival do
  it "exsits" do
    carnival1 = Carnival.new(14)

    expect(carnival1).to be_a(Carnival)
    expect(carnival1.duration).to eq(14)
    expect(carnival1.rides).to eq([])
  end
end

describe '#duration' do
  it "shows carnivals duration" do
    carnival1 = Carnival.new(14)

    expect(carnival1.duration).to eq(14)
  end
end

describe "#add_ride" do
  it 'adds a ride' do
    carnival1 = Carnival.new(14)
    ride1 = Ride.new({ name: 'Carousel', min_height: 24, admission_fee: 1, excitement: :gentle })
    
    expect(carnival1.rides).to eq([])
    
    carnival1.add_ride(ride1)

    expect(carnival1.rides).to eq([ride1])
  end
end

describe "#ride" do
  it 'list rides' do
    carnival1 = Carnival.new(14)
    ride1 = Ride.new({ name: 'Carousel', min_height: 24, admission_fee: 1, excitement: :gentle })
    ride2 = Ride.new({ name: 'Ferris Wheel', min_height: 36, admission_fee: 5, excitement: :gentle })
    carnival1.add_ride(ride1)

    expect(carnival1.ride).to eq([ride1])

    carnival1.add_ride(ride2)

    expect(carnival1.ride).to eq([ride1, ride2])
  end
end

describe '#most_popular_ride' do
  it 'returns most ridden ride' do
    carnival1 = Carnival.new(14)
    ride1 = Ride.new({ name: 'Carousel', min_height: 24, admission_fee: 1, excitement: :gentle })
    ride2 = Ride.new({ name: 'Ferris Wheel', min_height: 36, admission_fee: 5, excitement: :gentle })
    visitor1 = Visitor.new('Bruce', 54, '$10')
    visitor2 = Visitor.new('Tucker', 36, '$5')
    carnival1.add_ride(ride1)
    carnival1.add_ride(ride2)
    ride1.board_rider(visitor1)
    ride1.board_rider(visitor2)
    ride2.board_rider(visitor1)

    expect(carnival1.most_popular_ride).to eq(ride1)
  end
end


