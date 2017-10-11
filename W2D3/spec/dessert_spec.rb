require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  let(:cheesecake) {Dessert.new("cake",100,"Jay")}

  describe "#initialize" do
    it "sets a type" do
      expect(cheesecake.type).to eq("cake")
    end

    it "sets a quantity" do
      expect(cheesecake.quantity).to eq(100)
    end

    it "starts ingredients as an empty array" do
      expect(cheesecake.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do
      expect(cheesecake.quantity).to be_a(Integer)
    end
  end



  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      cheesecake.add_ingredient("cake")
      expect(cheesecake.ingredients).to include("cake")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      ingredients = %w(chocolate flour milk cream)

      ingredients.each {|el| cheesecake.add_ingredient(el)}

      expect(cheesecake.mix!).not_to be(ingredients)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      cheesecake.eat(20)
      expect(cheesecake.quantity).to be(80)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect { cheesecake.eat(101) }.to raise_error(RuntimeError)
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      expect(cheesecake.serve).to be_a(String)
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(cheesecake)
      cheesecake.make_more
    end
  end
end
