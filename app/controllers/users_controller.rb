class UsersController < ApplicationController
  before_action :move_to_index

  def edit
    @user = current_user
    # 以下はhigh-chartsの記述
    user_histories = @user.histories.count(:id)
    @user_histories, @history_true = User.history_record(user_histories)
  end
  
  def update
    current_user.update(user_params)
    redirect_to edit_user_path(current_user.id)
  end

  def ranking
    # ユーザーに紐づいた訪問数情報を取得して@user_ranks変数に代入する
    @user_history_ranks = User.find(UserHistory.group(:user_id).order('count(history_id) desc').pluck(:user_id))
  end

  private

  def user_params
    params.require(:user).permit(history_ids: [])
  end 

  def move_to_index
    unless user_signed_in?
      redirect_to destinations_path
    end
  end

end
