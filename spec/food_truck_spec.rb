require './lib/item'
require './lib/food_truck'

RSpec.describe FoodTruck do

    describe "initialization" do
        it "can initialize" do
            food_truck1 = FoodTruck.new("Rocky Mountain Pies")

            expect(food_truck1).to be_an_instance_of(FoodTruck)
        end

        it "has a name" do
            food_truck1 = FoodTruck.new("Rocky Mountain Pies")

            expect(food_truck1.name).to eq("Rocky Mountain Pies")
        end

        it "has an inventory" do
            food_truck1 = FoodTruck.new("Rocky Mountain Pies")

            expect(food_truck1.inventory).to eq({})
        end
    end
end