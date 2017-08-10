class Product < ApplicationRecord
	# The title, description and image url fields aren't empty.
	# the price is a valid number and not less than $0.01
	# the title is unique among all products
	# the image url looks reasonable



	validates :title, :description, :image_url, presence: true
	validates :price, numericality: {greater_than_or_equal_to: 0.01}
	validates :title, uniqueness: true

	validates :image_url, allow_blank: true, format: {
		with: %r{\.(gif|jpg|png)\z}i,
		message: 'must be a url for gif, jpg or png.'
	} 
end
