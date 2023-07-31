class Visitor
  attr_reader :name, :height, :spending_money, :preferences

  def initialize(name, height, spending_money)
    @name = name
    @height = height
    @spending_money = spending_money.tr("$", "").to_i
    @preferences = []
  end

  def add_preference(preference)
    @preferences << preference
  end

  def tall_enough?(min_height)
    if @height >= min_height
      true
    else
      false
    end
  end 

  def ride(admission_fee)
    @spending_money -= admission_fee
  end
end


