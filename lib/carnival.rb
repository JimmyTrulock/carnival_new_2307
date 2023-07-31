require "./lib/visitor"
require './lib/ride'

class Carnival
  attr_reader :duration, :rides

  def initialize(duration)
    @duration = duration
    @rides = []
  end
end

