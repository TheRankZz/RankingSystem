class Profile < ActiveRecord::Base
  has_attached_file :image, styles: {
      icon: '64x64#',
      thumb: '128x128#',
      medium: '200x200#'
  }, :default_url => "/images/profile/unknown.png"

  belongs_to :user, :class_name => 'User', :foreign_key => 'user_id'


  # Erst einmal wird das Bild nicht mehr validiert.
  # do_not_validate_attachment_file_type :image

  validates_attachment :image, :presence => true,
                       :content_type => { :content_type => /\Aimage\/.*\Z/ }
end
