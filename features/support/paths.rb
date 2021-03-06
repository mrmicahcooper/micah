module NavigationHelpers
  def path_to(page_name)
    case page_name

    when /the home\s?page/
      '/'

    when 'the sign in page'
      '/sign_in'

    when 'the new post page'
      '/blog/new'

    when 'the first post page'
      "/blog/#{@post.slug}"

    when 'the blog page'
      '/blog'

    else
      raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
        "Now, go and add a mapping in #{__FILE__}"
    end
  end
end

World(NavigationHelpers)
