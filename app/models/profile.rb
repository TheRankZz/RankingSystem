class Profile < ActiveRecord::Base

  has_attached_file :image, styles: {
      icon: '64x64#',
      thumb: '128x128#',
      medium: '200x200#'
  }, :default_url => "/images/profile/unknown.png"

  # Nur für Heroku, damit die Bilder dauerhaft gespeichert werden.
  # has_attached_file :image, styles: {
  #     icon: '64x64#',
  #     thumb: '128x128#',
  #     medium: '200x200#'
  # }, :default_url => "/images/profile/unknown.png",
  #                   :storage => :dropbox,
  #                   :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
  #                   :dropbox_visibility => 'public',
  #                   :path => ":style/:id_:filename"


  belongs_to :user, :class_name => 'User', :foreign_key => 'user_id'


  validates_attachment :image,
                       :content_type => { :content_type => /\Aimage\/.*\Z/ }
end
