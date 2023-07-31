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

