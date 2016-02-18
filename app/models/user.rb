class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :lockable

<<<<<<< HEAD

  has_many :ratings
  has_many :games, through: :ratings


  has_one :profile, :dependent => :destroy
=======
  ratyrate_rater
>>>>>>> development
end
