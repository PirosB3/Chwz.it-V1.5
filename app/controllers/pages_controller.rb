class PagesController < ApplicationController
  def index
    @video_categories = VideoPost.select(:category)



  def show
    end 

end
