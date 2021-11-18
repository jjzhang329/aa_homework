require "dessert"

describe Dessert do 
    subject(:brownie) {Dessert.new("brownie",50)}
    describe "#initialize" do 
        it "takes in a type" do 
            expect(brownie.type).to eq("brownie")
        end 
        it "take in an amount" do 
            expect(brownie.amount).to eq(50)
        end 
        context "with an huge amount" do 
            subject(:brownie){Dessert.new("brownie", 500)}
            it "set the type to the giant version" do
                expect(brownie.type).to eq("giant brownie")
            end 
        end 

    end

end 