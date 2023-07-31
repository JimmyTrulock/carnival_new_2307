require "./lib/visitor"

describe Visitor do
  it "exsist" do
    visitor1 = Visitor.new('Bruce', 54, '$10')

    expect(visitor1).to be_a(Visitor)
    expect(visitor1.name).to eq('Bruce')
    expect(visitor1.height).to eq(54)
    expect(visitor1.spending_money).to eq(10)
    expect(visitor1.preferences).to eq([])
  end
end

describe "#add_preference" do
  it "adds a preference" do
    visitor1 = Visitor.new('Bruce', 54, '$10')
    
    expect(visitor1.preferences).to eq([])

    visitor1.add_preference(:gentle)
    
    expect(visitor1.preferences).to eq([:gentle])
  end
end

describe "#tall_enough" do
  it "checks if height meets minimum requirement" do
    visitor1 = Visitor.new('Bruce', 54, '$10')
    visitor2 = Visitor.new('Tucker', 36, '$5')

    expect(visitor1.tall_enough?(54)).to eq(true)
    expect(visitor2.tall_enough?(54)).to eq(false)
  end
end



