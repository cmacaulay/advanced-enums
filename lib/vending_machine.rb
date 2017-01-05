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

  def snacks_by_name
    names =
    @inventory.collect do |snack|
      snack.name
    end
    names
  end

#like values become keys, snack names become their values within a hash
  def how_many_snacks
    @inventory.group_by do |snack|
      snack.quantity
    end
  end
  
end
