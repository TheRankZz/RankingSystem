class Game < ActiveRecord::Base
  has_attached_file :image, styles: {
      thumb: '48x48#',
      medium: '250x300#'
  }

  has_many :game_genres
  has_many :genres, through: :game_genres

  has_many :game_platforms
  has_many :platforms, through: :game_platforms


  TYPES = ["GESAMT" , "UMFANG", "STORY", "SPIELDESIGN" ]
  ratyrate_rateable *TYPES


  # Auskommentiert, weil unter Windows Probleme beim hochladen von Bildern besteht.
  #validates_attachment :image, :presence => true,
  #                     :content_type => { :content_type => /\Aimage\/.*\Z/ }

  # Erst einmal wird das Bild nicht mehr validiert.
  do_not_validate_attachment_file_type :image

  validates :link, format: %r|\Ahttp(s?)://www.amazon.de/|
  validates :genres, :platforms, :title, :developer, presence: true


  def self.search(search)
    joins(:genres).where("title LIKE ? OR description LIKE ? OR developer LIKE ? OR genres.name LIKE ?",
                         "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
        .distinct
  end



  def self.orderByRating()
    joins(:rating_caches).where(:cacheable_id => Game)
        .order('rating_caches.avg DESC')
  end
end