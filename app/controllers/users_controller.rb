# encoding: utf-8
class UsersController < ApplicationController
  before_filter :signed_in_user, only: [:edit, :update]
  before_filter :correct_user,   only: [:edit, :update]
  def new
  	@user = User.new
  end
  def show
  	@user = User.find(params[:id])
    respond_to do |format|
      format.html
      format.js
    end
  end
  def create
    @user = User.new(params[:user])
    @user.updating_password = true
    if @user.save
      sign_in @user
      flash[:success] = "恭喜您註冊成功！"
      redirect_to @user
    else
      render 'new'
    end
  end
  def edit
    @user = User.find(params[:id])
  end
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:success] = "設定已更新"
      sign_in @user
      redirect_to @user
    else
      render 'edit'
    end
  end
  def index
    @users = User.search(params[:search])

  end

  #test
  def say
    puts "hellooooooooo!!!"
  end


  private

    def signed_in_user
      unless signed_in?
        store_location
        redirect_to signin_path, notice: "請登入"
      end
    end
    def correct_user
      @user = User.find(params[:id])
      redirect_to root_path unless current_user?(@user)
    end

end
