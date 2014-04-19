module ApplicationHelper

  def active_link_to(text, path, options={})
    link_to(text, path, options.merge({class: active?(path)}))
  end

  def active?(path)
    "active" if /^#{path}/ =~ request.path
  end

  def home_page?
    request.path == root_path
  end

end
