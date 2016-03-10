class Product < ActiveRecord::Base
	has_many :orders
	has_many :comments
	def average_rating
		comments.average(:rating).to_f
	end
	validates :name, presence: true
	validates :description, presence: true
	validates :image_url, presence: true
	validates :color, presence: true
	validates :price, numericality: {only_integer: true}
end
