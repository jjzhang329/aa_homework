require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  subject(:cheesecake) {Dessert.new("cheesecake", 10, chef)}
  let(:chef) { double("JJ", name: "JJ") }


  describe "#initialize" do
    it "sets a type" do 
      expect(cheesecake.type).to eq("cheesecake")
    end 

    it "sets a quantity" do 
      expect(cheesecake.quantity).to eq(10)
    end 

    it "starts ingredients as an empty array" do
      expect(cheesecake.ingredients).to eq([])
    end 
    it "raises an argument error when given a non-integer quantity" do 
      expect{Dessert.new("cheesecake", "10","JJ")}.to raise_error(ArgumentError)
    end 
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do 
      expect(cheesecake.ingredients).to_not include("eggs")
      cheesecake.add_ingredient("eggs")
      expect(cheesecake.ingredients).to include("eggs")
    end 
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do 
      cheesecake.add_ingredient("eggs")
      cheesecake.add_ingredient("milk")
      cheesecake.add_ingredient("strawberry")
      expect(cheesecake.ingredients).to eq(["eggs", "milk", "strawberry"])
      cheesecake.mix!
      expect(cheesecake.ingredients).not_to eq(["eggs", "milk", "strawberry"])
      expect(cheesecake.ingredients.sort).to eq(cheesecake.ingredients.sort)
      
    end 

  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do 
      expect(cheesecake.quantity).to eq(10)
        cheesecake.eat(2)
      expect(cheesecake.quantity).to eq(8)
    end 

    it "raises an error if the amount is greater than the quantity" do 
      expect{cheesecake.eat(20)}.to raise_error(RuntimeError)
    end 
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do   
     
      allow(chef).to receive(:titleize).and_return("Chef JJ the Great Baker")
      
      expect(cheesecake.serve).to eq("Chef JJ the Great Baker has made 10 cheesecakes!")

    end 
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(cheesecake)
      cheesecake.make_more
    end 
  end
end
