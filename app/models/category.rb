class Category < ActiveRecord::Base
  has_many :rating_categories
  has_many :ratings, through: :rating_categories
end
