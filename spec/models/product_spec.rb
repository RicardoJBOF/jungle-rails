require 'rails_helper'

RSpec.describe Product, type: :model do

  describe 'Validations' do

    it "is valid with valid name, price, quantity and category" do
      category = Category.new(name: 'Toys')
      product = Product.new(name: 'Book', price: 1, price_cents: 100, quantity: 1, category: category)
      expect(product).to be_valid
    end

    it "is not valid without valid name" do
      category = Category.new(name: 'Toys')
      product = Product.new(name: nil, price: 1, price_cents: 100, quantity: 1, category: category)
      expect(product).to_not be_valid
    end

    it "is not valid without valid price" do
      category = Category.new(name: 'Toys')
      product = Product.new(name: 'Book', price: nil, price_cents: nil, quantity: 1, category: category)
      expect(product).to_not be_valid
    end

    it "is not valid without valid quantity" do
      category = Category.new(name: 'Toys')
      product = Product.new(name: 'Book', price: 1, price_cents: 100, quantity: nil, category: category)
      expect(product).to_not be_valid
    end

    it "is not valid without valid category" do
      category = Category.new(name: 'Toys')
      product = Product.new(name: 'Book', price: 1, price_cents: 100, quantity: 1, category: nil)
      expect(product).to_not be_valid
    end

  end

end
