module BlogpostsHelper
  def show_date(blogpost)
    if blogpost.published_at.present?
      blogpost.published_at.strftime("%d %b %Y")
    end    
  end
end
