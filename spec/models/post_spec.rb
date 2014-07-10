require 'active_record_helper'
require 'post'

describe Post do

  describe "#build_slug" do
    it "it sets the slug as the parameterized title" do
      post = Post.new(title: 'Micah Cooper')
      post.build_slug
      expect(post.slug).to eq('micah-cooper')
    end
  end

end
