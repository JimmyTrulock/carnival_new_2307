require "./lib/visitor"
require './lib/ride'

class Carnival
  attr_reader :duration, :rides

  def initialize(duration)
    @duration = duration
    @rides = []
  end

  def duration
    @duration
  end

  def add_ride(ride)
    @rides << ride
  end

  def ride
    @rides
  end

  def most_popular_ride
    most_popular_ride = ""
    ridden_count = 0
    @rides.each do |ride|
      if ride.ridden > ridden_count
        ridden_count = ride.ridden
        most_popular_ride = ride
      end
    end
    most_popular_ride
  end
end

