module VideoPostsHelper
  def main_video_post
    new_vid = "<article class='group'>
                <span class='iconSize news-icon' data-icon='&#xe003;'></span>
                  <h1>"
    new_vid +=      @main_post.video_title
    new_vid +=    "</h1>
                  <figure>"
    new_vid +=      @main_post.video_url
    new_vid +=    "</figure>
                <p class='mainStoryParagraph'>"
    new_vid +=     @main_post.video_description
    new_vid += "</p>
              <div class='post-author news'>
                <address>Shared by"
    new_vid += @main_post.user.username
    new_vid += "15th Jan, 2013.</address>
                </div>
                  </article>"
    new_vid.html_safe
  end


end
