class Item 
    attr_reader :name, :price

    def initialize(items)
        @name =items[:name]
        @price = items[:price][1..-1].to_f
    end
end