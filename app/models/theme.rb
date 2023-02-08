class Theme < ActiveHash::Base
  self.data = [
    { id: 1, name: 'グルメ'}, { id: 2, name: '温泉'},
    { id: 3, name: 'リゾート'}, { id: 4, name: 'テーマパーク'}
  ]
  include ActiveHash::Associations
  has_many :destinations
end