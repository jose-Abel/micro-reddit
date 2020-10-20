require "test_helper"

class PostTest < ActiveSupport::TestCase

  test "post should be valid" do
    @post = Post.new(title: "Web Development", description: "Learning web development with Ruby on Rails is fun and easy")
    assert @post.valid?
  end
end