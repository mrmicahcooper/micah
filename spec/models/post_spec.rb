require 'active_record_helper'
require 'models/post'

describe Post do
  it "requires a title" do
    Post.new.should have(1).errors_on(:title)
  end

  it "requires unique title" do
    Post.create(title: 'yeah')
    Post.new(title: 'yeah').should have(1).errors_on(:title)
  end

  describe "#build_slug" do
    it "it sets the slug as the parameterized title" do
      post = Post.new(title: 'Micah Cooper')
      post.build_slug
      post.slug.should eq('micah-cooper')
    end
  end


end
