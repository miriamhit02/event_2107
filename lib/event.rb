class Event
  attr_reader :name, :food_trucks

  def initialize(name)
    @name = name
    @food_trucks = []
  end

  def add_food_truck(truck)
    @food_trucks << truck
  end

  def food_truck_names
    @food_trucks.map do |truck|
      truck.name
    end
  end

  def food_trucks_that_sell(items)
    selling = []
    @food_trucks.each do |truck|
      truck.inventory.each do |item|
        if item.include?(items)
          selling << truck
        end
      end
    end
    selling
  end

  def total_inventory

  end
end
