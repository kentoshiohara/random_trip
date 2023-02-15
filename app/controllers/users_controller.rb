class UsersController < ApplicationController

  def edit
    # binding.pry
    @user = current_user
    # 以下はhigh-chartsの記述
    user_histories = @user.histories.count(:id)
    
    @user_histories, @history_true = User.history_record(user_histories)
    
  end
  
  def update
    current_user.update(user_params)
    redirect_to edit_user_path(current_user.id)
  end

  private

  def user_params
    params.require(:user).permit(history_ids: [])
  end 

  
end
