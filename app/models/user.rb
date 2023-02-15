class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable
  
  has_many :user_histories
  has_many :histories, through: :user_histories

  def self.history_record(user_histories)
    # history_all = History.all.count(:id)
    history_true = user_histories
    history_false = (47 - history_true)
    [{ '訪問済み': history_true, '未訪問': history_false }, history_true]
  end

end
