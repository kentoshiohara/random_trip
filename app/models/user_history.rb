class UserHistory < ApplicationRecord
  belongs_to :user
  belongs_to :history
end
