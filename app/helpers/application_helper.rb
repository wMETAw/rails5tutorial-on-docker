module ApplicationHelper

  def full_title(page_title = "")
    if page_title.empty?
        base_title = "Ruby on Rails Tutorial Sample App"
    else
        base_title = page_title + " | " + "Ruby on Rails Tutorial Sample App"
    end
  end
end
