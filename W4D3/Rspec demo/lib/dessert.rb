class Dessert
    def initialize(type, amount)
        @type = type
        @amount = amount
    end 
    attr_reader :type, :amount
end