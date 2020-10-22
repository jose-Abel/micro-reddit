# rubocop : disable Layout/EndOfLine

require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def setup
    @user = User.new(username: 'developer3', email: 'developer3@email.com', password: 'password')

    @post = Post.new(title: 'Web Development', description: 'Learning web development with Ruby on Rails')

    @post.user = @user
  end

  test 'post should be valid' do
    assert @post.valid?
  end

  test 'title should be present' do
    @post.title = ' '
    assert_not @post.valid?
  end

  test 'title should be unique' do
    @post.save
    @post2 = Post.new(title: 'Web Development', description: 'Another post about web development')
    assert_not @post2.valid?
  end

  test 'title should not be too long' do
    @post.title = 'a' * 102
    assert_not @post.valid?
  end

  test 'title should not be to short' do
    @post.title = 'aa'
    assert_not @post.valid?
  end

  test 'description should be present' do
    @post.description = ' '
    assert_not @post.valid?
  end

  test 'description should not be too long' do
    @post.description = 'a' * 302
    assert_not @post.valid?
  end

  test 'description should not be to short' do
    @post.description = 'a' * 8
    assert_not @post.valid?
  end
end

# rubocop : enable Layout/EndOfLine
