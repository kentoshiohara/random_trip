class Theme < ActiveHash::Base
  self.data = [
    { id: 1, name: '---'}, { id: 2, name: 'グルメ'}, { id: 3, name: '温泉'},
    { id: 4, name: 'リゾート'}, { id: 5, name: 'テーマパーク'}
  ]
  include ActiveHash::Associations
  has_many :destinations
end