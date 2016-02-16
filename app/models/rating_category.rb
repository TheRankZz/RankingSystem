class RatingCategory < ActiveRecord::Base
  belongs_to :category
  belongs_to :rating
end
