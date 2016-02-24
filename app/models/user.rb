class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :lockable

  has_one :profile, :dependent => :destroy

  has_many :comments, :dependent => :nullify

  ratyrate_rater


  def is?(role)
    roles.include?(role.to_s)
  end
end
