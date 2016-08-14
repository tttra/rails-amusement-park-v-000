class UsersController < ApplicationController

  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      redirect_to :back
    end
  end

  def show
    @message = params[:message] if params[:message]
  end

  def edit
    
  end

  def update
    @user = User.update(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      redirect_to :back
    end    
  end

  def destroy
    @user.destroy
    redirect_to root_path
  end
  
  private

  def user_params
    params.require(:user).permit(:name, :password, :nausea, :happiness, :height, :tickets, :admin)
  end

  def set_user
    @user = User.find(params[:id])
  end
end