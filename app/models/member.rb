class Member < ActiveHash::Base
  self.data = [
    { id: 1, name: '---'}, { id: 2, name: '一人旅'}, { id: 3, name: 'カップル'},
    { id: 4, name: '友達'}, { id: 5, name: '家族'}
  ]
  include ActiveHash::Associations
  has_many :destinations
end