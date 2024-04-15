class Event
    attr_reader :name, :food_trucks

    def initialize(name)
        @name = name
        @food_trucks = []
    end

    def add_food_truck(food_truck)
        @food_trucks << food_truck
    end

    def food_truck_names
        @food_trucks.map(&:name)
    end

    def food_trucks_that_sell(item)
        @food_trucks.select { |food_truck| food_truck.inventory.key?(item) }
    end

    def sorted_item_list
        all_items = @food_trucks.flat_map { |food_truck| food_truck.inventory.keys }
        all_items.map(&:name).uniq.sort
    end

    def total_inventory
        inventory_hash = Hash.new { |hash, key| hash[key] = {quantity: 0, food_trucks: []} }
        @food_trucks.each do |food_truck|
            food_truck.inventory.each do |item, quantity|
                inventory_hash[item][:quantity] += quantity
                inventory_hash[item][:food_trucks] << food_truck unless inventory_hash[item][:food_trucks].include?(food_truck)
            end
        end
        inventory_hash
    end
end