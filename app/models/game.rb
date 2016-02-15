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

  has_many :ratings
  has_many :users, through: :ratings

  # Auskommentiert, weil unter Windows Probleme beim hochladen von Bildern besteht.
  #validates_attachment :image, :presence => true,
  #                     :content_type => { :content_type => /\Aimage\/.*\Z/ }

  # Erst einmal wird das Bild nicht mehr validiert.
  do_not_validate_attachment_file_type :image

  validates :link, format: %r|\Ahttp(s?)://www.amazon.de/|
  validates :genres, :platforms, :title, :developer, presence: true

  def self.search(search)
    where("title LIKE ? OR description LIKE ? OR developer LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
  end


end