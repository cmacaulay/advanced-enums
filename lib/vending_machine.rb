# require './lib/snack'
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
    inventory.collect do |snack|
      snack.name
    end
  end

  def how_many_snacks
    inventory.group_by do |snack|
      snack.quantity
    end
  end

  def inventory_by_alphabet
    inventory.group_by do |snack|
      snack.name[0]
    end
  end

  def total_num_items
    inventory.reduce(0) do |amount, snack|
      amount + snack.quantity
    end
  end

  def first_letters
    inventory.reduce("") do |first_letters, snack|
      first_letters + ( snack.name[0] )
    end
  end

  def change_indexes
    inventory.map.with_index do |snack, index|
      index + 1
    end
  end



end
