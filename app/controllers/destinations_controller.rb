class DestinationsController < ApplicationController
  
  def index
  end

  def new
    @destination = Destination.new
  end
  
  def create
    @destination = Destination.new(destination_params)
    if @destination.save
      redirect_to action: :recommend
    else
      render :new
    end
  end 
  
  def recommend
    destination = Destination.last(params[:id])
    @theme = destination.theme
    @prefecture_gourmet = Prefecture.where(theme1: "グルメ").sample(3)
    @prefecture_hotspring = Prefecture.where(theme2: "温泉").sample(3)
    @prefecture_resort = Prefecture.where(theme3: 'リゾート').sample(3)
    @prefecture_amusementpark = Prefecture.where(theme4: 'テーマパーク').sample(3)
    @prefecture_others = Prefecture.where(theme5: 'その他').sample(3)
  end   
  
  # def history
  #   @history = History.new
  # end
  
  # def update
  #   @history
  #   @user.update(user_params)
  #   flash[:success] = "旅行先を更新しました。"
  #   redirect_to history_destination_path(@user)
  # end

  # private

  # def user_params
  #   params.require(:user).permit(prefecture_ids: [])
  # end 

  def destination_params
    params.require(:destination).permit(:id, :theme_id, :member_id, :season_id, :prefecture_id)
  end 
end
