require './lib/item'
require './lib/food_truck'
require './lib/event'

RSpec.describe Event do

    describe "initialization" do
        it "can initialize" do
            event = Event.new("South Pearl Street Farmers Market")

            expect(event).to be_an_instance_of(Event)
        end

        it "can have food trucks" do
            event = Event.new("South Pearl Street Farmers Market")

            expect(event.food_trucks).to eq([])
        end
    end

    describe "adding trucks to the event" do
        it "can add trucks" do
            event = Event.new("South Pearl Street Farmers Market")
            food_truck1 = FoodTruck.new("Rocky Mountain Pies")
            food_truck2 = FoodTruck.new("Ba-Nom-a-Nom") 
            food_truck3 = FoodTruck.new("Palisade Peach Shack")

            event.add_food_truck(food_truck1)
            event.add_food_truck(food_truck2)
            event.add_food_truck(food_truck3)

            expect(event.food_trucks).to eq([food_truck1, food_truck2, food_truck3])
        end

        it "can return the truck names" do
            event = Event.new("South Pearl Street Farmers Market")
            food_truck1 = FoodTruck.new("Rocky Mountain Pies")
            food_truck2 = FoodTruck.new("Ba-Nom-a-Nom") 
            food_truck3 = FoodTruck.new("Palisade Peach Shack")

            event.add_food_truck(food_truck1)
            event.add_food_truck(food_truck2)
            event.add_food_truck(food_truck3)

            expect(event.food_truck_names).to eq(["Rocky Mountain Pies", "Ba-Nom-a-Nom", "Palisade Peach Shack"])
        end
    end
end