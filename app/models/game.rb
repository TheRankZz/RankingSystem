class Game < ActiveRecord::Base
  has_attached_file :image, styles: {
      thumb: '48x48#',
      square: '128x128#',
      medium: '256x256#'
  }

  has_many :game_genres
  has_many :genres, through: :game_genres

  has_many :game_platforms
  has_many :platforms, through: :game_platforms

  # Auskommentiert, weil es unter Windows noch Probleme gibt.
  #validates_attachment :image, :presence => true,
  #                     :content_type => { :content_type => /\Aimage\/.*\Z/ }

  do_not_validate_attachment_file_type :image



  def self.search(search)
    where("title LIKE ? OR description LIKE ? OR developer LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
  end
end