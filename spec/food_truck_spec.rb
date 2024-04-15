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

    describe "item stocking" do
        it "checks the inventory for stock" do
            food_truck1 = FoodTruck.new("Rocky Mountain Pies")
            item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
            item2 = Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})

            expect(food_truck1.check_stock(item1)).to eq(0)
        end
        
        it "can stock items" do
            food_truck1 = FoodTruck.new("Rocky Mountain Pies")
            item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
            item2 = Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})
            food_truck1.stock(item1, 30)

            expect(food_truck1.check_stock(item1)).to eq(30)
        end
    end

    describe "revenue projections" do
        it "can tell potential revenue" do
            food_truck1 = FoodTruck.new("Rocky Mountain Pies")
            item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
            item2 = Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})
            food_truck1.stock(item1, 30)

            expect(food_truck1.potential_revenue).to eq(112.5)
        end
    end
end