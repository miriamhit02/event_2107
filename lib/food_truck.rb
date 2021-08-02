class FoodTruck
  attr_reader :name, :inventory

  def initialize(name)
    @name = name
    @inventory = {}
  end

  def check_stock(item)
    if @inventory[item] == nil
      return 0
    else
      @inventory[item]
    end
  end

  def stock(item, amount)
    @inventory[item] = amount
  end

  def potential_revenue
    truck_rev = 0
    @inventory.each do |key, value|
      truck_rev += key.price[1..-1].to_f * value
    end
    truck_rev
  end
end
