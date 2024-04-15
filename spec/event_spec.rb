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
end