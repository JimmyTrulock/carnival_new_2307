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
end

