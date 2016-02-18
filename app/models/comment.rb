class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :game

  validates :text, presence: true
end
