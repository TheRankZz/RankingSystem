class Game < ActiveRecord::Base
  has_attached_file :image, styles: {
      thumb: '48x48#',
      medium: '250x300#'
  }

# Nur für Heroku, damit die Bilder dauerhaft gespeichert werden.
#   has_attached_file :image, styles: {
#       thumb: '48x48#',
#       medium: '250x300#'
#   }, :storage => :dropbox,
#                     :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
#                     :dropbox_visibility => 'public',
#                     :path => ":style/:id_:filename"



  has_many :game_genres, :dependent  => :delete_all
  has_many :genres, through: :game_genres

  has_many :game_platforms, :dependent  => :delete_all
  has_many :platforms, through: :game_platforms

  has_many :comments, :dependent  => :delete_all

  has_many :rating_caches, :foreign_key => "cacheable_id", :class_name => "RatingCache"


  TYPES = ["FUN", "SCOPE", "STORY", "DESIGN"]
  ratyrate_rateable *TYPES

  validates_attachment :image,
                      :content_type => { :content_type => /\Aimage\/.*\Z/ }

  validates :link, format: %r|\Ahttp(s?)://www.amazon.de/|

  validates :genres, :platforms, :title, :developer, presence: true


  def self.search(search)
    joins(:genres, :platforms).where("title ILIKE ? OR description ILIKE ? OR developer ILIKE ? OR genres.name ILIKE ? OR platforms.name ILIKE ?",
                         "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
        .distinct
  end


  def TotalRating()
      rating_caches.getTotalRankingFromGame
  end

  def QuantityRating()
    rating_caches.getQuantityRating
  end

  def self.withRanking()
    Game.joins("JOIN rating_caches ON rating_caches.cacheable_id = games.id")
        .group('games.id')
        .order('avg(avg) DESC')
  end


  def self.allGames()
    (withRanking + all).uniq
  end

  def self.orderByReleaseDate()
    order('releasedate DESC')
  end
end