class UsersController < ApplicationController

  def edit
    @user = current_user
  end
  
  def update
    # binding.pry
    current_user.update(user_params)
    redirect_to edit_user_path(current_user.id)
  end

  private

  def user_params
    params.require(:user).permit(history_ids: [])
  end 

  
end
