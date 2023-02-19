require 'rails_helper'

RSpec.describe Destination, type: :model do
  before do
    @destination = FactoryBot.build(:destination)
  end

  describe '旅行先診断アンケート登録' do
    context 'アンケート登録できるとき' do
      it 'theme_idとmember_idとseason_idとprefecture_idが存在すれば登録できる' do
        expect(@destination).to be_valid
      end  
    end 
    context 'アンケート登録できないとき' do
      it 'prefecture_idが空では登録できない' do 
        @destination.prefecture_id = ""
        @destination.valid?
        expect(@destination.errors.full_messages).to include("Prefecture can't be blank")
      end 
      it 'theme_idが空では登録できない' do 
        @destination.theme_id = ""
        @destination.valid?
        expect(@destination.errors.full_messages).to include("Theme can't be blank")
      end 
      it 'member_idが空では登録できない' do 
        @destination.member_id = ""
        @destination.valid?
        expect(@destination.errors.full_messages).to include("Member can't be blank")
      end 
      it 'season_idが空では登録できない' do 
        @destination.season_id = ""
        @destination.valid?
        expect(@destination.errors.full_messages).to include("Season can't be blank")
      end 
    end

  end 
end
