module ApplicationHelper


  def active_link_to(text, path, options={})
    if /^#{url_for(path)}/ =~ request.path
      options[:class] = "#{options[:class]} active"
    end
    link_to text, path, options
  end


  def home_page?
    request.path == root_path
  end

end
