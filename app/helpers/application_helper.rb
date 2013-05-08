module ApplicationHelper
  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "Chwz.it"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end


  #Devise registration page on home-page
  def resource_name
    :user
  end
 
  def resource
    @resource = session[:session] || User.new
  end
 
  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
  

end


