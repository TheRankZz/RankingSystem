class Profile < ActiveRecord::Base
  has_attached_file :image, styles: {
      thumb: '48x48#',
      medium: '200x200#'
  }

  belongs_to :user, :class_name => 'User', :foreign_key => 'user_id'


  # Erst einmal wird das Bild nicht mehr validiert.
  do_not_validate_attachment_file_type :image
end
