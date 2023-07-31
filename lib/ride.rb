require "./lib/visitor"

class Ride
  attr_reader :name, :min_height, :admission_fee, :excitement, :total_revenue, :rider_log

  def initialize(data)
    @name = data[:name]
    @min_height = data[:min_height]
    @admission_fee = data[:admission_fee]
    @excitement = data[:excitement]
    @total_revenue = 0
    @rider_log = {}
  end

  def board_rider(visitor)
    if @rider_log.has_key?(visitor)
      @rider_log[visitor] += 1
    else 
      @rider_log.store(visitor, 1)
    end
    visitor.ride(@admission_fee)
    @total_revenue += @admission_fee
  end
end

