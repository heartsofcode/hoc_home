module ApplicationHelper

  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "Heart of Code App"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  def markdown(text)
    emoji = Redcarpet::Markdown.new(
      MdEmoji::Render.new(filter_html: true),
      no_intra_emphasis: true,
      autolink: true,
      space_after_headers: false,
      underline: true
    )

    raw emoji.render(text)
  end
end
