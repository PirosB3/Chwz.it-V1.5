class NewsPagesController < ApplicationController
  def index
    @video_categories = VideoPost.where("category = news")
  end



  def show
    end 

end
