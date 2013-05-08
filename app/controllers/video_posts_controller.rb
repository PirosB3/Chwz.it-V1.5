class VideoPostsController < ApplicationController  
  before_filter :signed_in_user, only: :create
  before_filter :admin_user,     only: :destroy

  def index
    @main_post = VideoPost.where("main_post = 't'").limit(1)
    @video_posts = VideoPost.paginate :per_page => 6, :page => params[:page]
  end

  def create
    @video_posts = VideoPost.paginate :per_page => 6, :page => params[:page]
    @video_post = current_user.video_posts.build(params[:video_post])
    if @video_post.save
      flash[:success] = "Video posted!"
      redirect_to root_path
    else
      flash[:success] = "Errors found! Please try again."
      redirect_to root_path
    end 
  end

  def show
    @main_video_post = VideoPost.find(params[:id])
    @gallery_video_posts = VideoPost.where("id != #{@main_video_post.id}").limit(6)
    @gallery_pagination = VideoPost.where("id != #{@main_video_post.id}").paginate :per_page => 6, :page => params[:page]
  end

  def destroy
    @video_post = VideoPost.find(params[:id])
    if @video_post.present?
      @video_post.destroy
    end
    redirect_back_or root_path
  end


  private

  def admin_user
    redirect_back_or root_path unless user_signed_in? && current_user.admin?
  end

  def signed_in_user
    unless user_signed_in?
      store_location
      redirect_to root_url, notice: "Please sign in."
    end
  end



end
