require './lib/item'

RSpec.configure do |config|
    config.formatter = :documentation
end

RSpec.describe Item do

    describe "initialization" do
        

        it "can initialize" do
            item1 = Item.new({name: "Peach Pie", price: "$3.75"})

            expect(item1).to be_an_instance_of(Item)
        end

        it "has a name" do
            item1 = Item.new({name: "Peach Pie", price: "$3.75"})

            expect(item1.name).to eq("Peach Pie")
        end

        it "has a moral cost" do
            item1 = Item.new({name: "Peach Pie", price: "$3.75"})

            expect(item1.price).to eq(3.75)
        end
    end
end