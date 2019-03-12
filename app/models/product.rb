class Product < ApplicationRecord

	belongs_to :group

  	has_many :images, as: :imagable, inverse_of: :imagable

    accepts_nested_attributes_for :images, allow_destroy: true
end
  