class Member < ActiveHash::Base
  self.data = [
    { id: 1, name: '一人旅'}, { id: 2, name: 'カップル'},
    { id: 3, name: '友達'}, { id: 4, name: '家族'}
  ]
  include ActiveHash::Associations
  has_many :destinations
end