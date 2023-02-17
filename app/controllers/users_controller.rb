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
    flash[:sucess] = "都道府県訪問記録を更新しました"
    redirect_to edit_user_path(current_user.id)
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
