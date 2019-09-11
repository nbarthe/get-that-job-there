class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  ATTRIBUTES = %i[first_name last_name email occupation field city born_on type image_url]
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :appointments

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :field, presence: true
  validates :city, presence: true


  def users
    User.where(type: "User")
  end
end
