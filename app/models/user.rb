class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable
  
  # has_many :destinations
  # has_many :user_prefectures
  # has_many :prefectures, through: :user_prefectures

  has_many :user_histories
  has_many :histories, through: :user_histories

end
