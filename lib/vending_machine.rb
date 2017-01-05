require './lib/snack'
require 'pry'

class VendingMachine
  attr_reader :inventory

  def initialize
    @inventory = Array.new
  end


  def add_snack(snack)
    inventory << (snack)
  end



end
