class NewsPagesController < ApplicationController
  def index
    @video_categories = VideoPost.where(:category => params[:category])
  end



  def show
    end 

end
