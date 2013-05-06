class VideoPostsController < ApplicationController
  before_filter :signed_in_user, only: :create
  before_filter :admin_user,     only: :destroy

  def index
    @video_posts = VideoPost.paginate :per_page => 6, :page => params[:page]
  end

  def create
    @video_posts = VideoPost.paginate :per_page => 6, :page => params[:page]
    @video_post = current_user.video_posts.build(params[:video_post])
    if @video_post.save
      flash[:success] = "Video posted!"
      redirect_to root_path
    else
      @feed_items = []
      render 'static_pages/home'
    end
  end

  def destroy
    @video_post = current_user.video_posts
    @video_post.destroy
    redirect_to root_path
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
