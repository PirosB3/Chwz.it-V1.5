class UsersController < ApplicationController

  before_filter :admin_user, only: [:index, :destroy]


  def index
    @users = User.paginate(page: params[:page])
  end

  def show
    @user = User.includes(:video_posts).find(params[:id])
  rescue ActiveRecord::RecordNotFound
    flash[:notice] = "User does not exist."
    redirect_to root_path
  end


  def destroy
    user = User.find(params[:id])
    user.destroy
    flash[:success] = "User destroyed"
    redirect_to users_path
  end

  private


  def correct_user
    @user = User.find(params[:id])
    redirect_back_or current_user unless current_user?(@user)
  end

  def admin_user
    redirect_back_or root_path unless signed_in? && current_user.admin?
  end
end
