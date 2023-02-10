class Destination < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture
  belongs_to :theme
  belongs_to :member
  belongs_to :season

  validates :prefecture_id, :theme_id, :member_id, :season_id, presence: true
end
