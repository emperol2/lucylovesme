module ApplicationHelper

  def is_active?(link_path)
    current_page?(link_path) ? "active" : ""
  end

  def title(page_title, options={})
    content_for(:title, page_title.to_s)
    return content_tag(:h1, page_title, options)
  end

  def meta_desc(page_description, options={})
    content_for(:meta_desc, truncate(page_description, :length => 200).to_s)
    return content_tag(:p, page_description, options)
  end

end
