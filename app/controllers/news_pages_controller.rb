class NewsPagesController < ApplicationController
  def index
    @video_categories = VideoPost.select(:category)
 end



  def show
    end 

end
