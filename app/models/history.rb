class History < ApplicationRecord
  has_many :user_histories
  has_many :users, through: :user_histories
end
