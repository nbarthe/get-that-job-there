class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  ATTRIBUTES = %i[first_name last_name email occupation field city born_on type]
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :appointments

  def users
    User.where(type: "User")
  end
end
