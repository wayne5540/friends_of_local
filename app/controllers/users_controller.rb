# encoding: utf-8
class UsersController < ApplicationController
  def new
  	@user = User.new
  end
  def show
  	@user = User.find(params[:id])
  end
  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      flash[:success] = "恭喜您註冊成功！"
      redirect_to @user
    else
      render 'new'
    end
  end

end
