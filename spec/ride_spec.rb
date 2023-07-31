require "./lib/visitor"
require './lib/ride'

describe Ride do
  it "exists" do
    ride1 = Ride.new({ name: 'Carousel', min_height: 24, admission_fee: 1, excitement: :gentle })

    expect(ride1).to be_a(Ride)
    expect(ride1.name).to eq('Carousel')
    expect(ride1.min_height).to eq(24)
    expect(ride1.admission_fee).to eq(1)
    expect(ride1.excitement).to eq(:gentle)
    expect(ride1.total_revenue).to eq(0)
    expect(ride1.rider_log).to eq({})
  end
end

describe "#board_rider" do
  it "adds rider to rider_log" do
    ride1 = Ride.new({ name: 'Carousel', min_height: 24, admission_fee: 1, excitement: :gentle })
    visitor1 = Visitor.new('Bruce', 54, '$10')

    expect(ride1.rider_log).to eq({})
    expect(ride1.total_revenue).to eq(0)

    ride1.board_rider(visitor1)

    expect(ride1.rider_log).to eq({visitor1 => 1})
    expect(visitor1.spending_money).to eq(9)
    expect(ride1.total_revenue).to eq(1)

    ride1.board_rider(visitor1)

    expect(ride1.rider_log).to eq({visitor1 => 2})
    expect(visitor1.spending_money).to eq(8)
    expect(ride1.total_revenue).to eq(2)
  end
end

