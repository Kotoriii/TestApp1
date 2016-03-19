require 'rails_helper'

describe Product do

	context "when the product has comments" do
		before do
	#code to generate test content
	@product = Product.create!(name: "vintage bike", description: "So bike", image_url: "http://wow.com", color: "random", price: 2)
	@user = User.create!(email: "rspec@test.com", password: "Test1234")
	@product.comments.create!(rating: 1, user: @user, body: "Awful bike!")
	@product.comments.create!(rating: 3, user: @user, body: "Meh bike!")
	@product.comments.create!(rating: 5, user: @user, body: "Great bike!")
end

it "returns the average rating of all comments in product" do
	expect(@product.average_rating).to eq 3
end
end

context "when the entered product is not valid" do
	it "returns invalid product" do
		expect(Product.new(name: "Bike without a name")).not_to be_valid
	end

end

end

