class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #user will have more than 1 post
  has_many :posts, dependent: :destroy

  #delete comments too
  has_many :comments, dependent: :destroy
end
