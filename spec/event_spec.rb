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

    describe "trucks selling specfic items" do
        it "can return specific items on trucks"
        event = Event.new("South Pearl Street Farmers Market")
            food_truck1 = FoodTruck.new("Rocky Mountain Pies")
            food_truck2 = FoodTruck.new("Ba-Nom-a-Nom") 
            food_truck3 = FoodTruck.new("Palisade Peach Shack")

            event.add_food_truck(food_truck1)
            event.add_food_truck(food_truck2)
            event.add_food_truck(food_truck3)

            food_truck1.stock(item1, 35)
            food_truck1.stock(item2, 7)
            food_truck2.stock(item4, 50)
            food_truck2.stock(item3, 25)
            food_truck3.stock(item1, 65)

            expect(event.food_trucks_that_sell(item1)).to eq()
            expect(event.food_trucks_that_sell(item4)).to eq()
    end
end