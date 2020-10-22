# rubocop : disable Layout/EndOfLine

require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  def setup
    @user = User.new(username: 'developer', email: 'developer@email.com', password: 'password')

    @post = Post.new(title: 'Web Development', description: 'Learning web development with Ruby on Rails')

    @post.user = @user

    @comment = Comment.new(title: 'Cyber Security', description: 'Cyber security is an important area to study')

    @comment.post = @post

    @comment.user = @user
  end

  test 'comment should be valid' do
    assert @comment.valid?
  end

  test 'title should be present' do
    @comment.title = ' '
    assert_not @comment.valid?
  end

  test 'title should not be too long' do
    @comment.title = 'a' * 21
    assert_not @comment.valid?
  end

  test 'description should be present' do
    @comment.description = ' '
    assert_not @comment.valid?
  end

  test 'description should not be too long' do
    @comment.description = 'a' * 101
    assert_not @comment.valid?
  end
end

# rubocop : enable Layout/EndOfLine
