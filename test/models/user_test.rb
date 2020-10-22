# rubocop : disable Layout/EndOfLine

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(username: 'developer', email: 'developer@email.com', password: 'password')
  end

  test 'user should be valid' do
    assert @user.valid?
  end

  test 'username should be present' do
    @user.username = ' '
    assert_not @user.valid?
  end

  test 'email should be present' do
    @user.email = ' '
    assert_not @user.valid?
  end

  test 'password should be present' do
    @user.password = ' '
    assert_not @user.valid?
  end

  test 'username should be unique' do
    @user.save
    @user2 = User.new(username: 'developer', email: 'developer2@email.com', password: 'password')
    assert_not @user2.valid?
  end

  test 'email should be unique' do
    @user.save
    @user2 = User.new(username: 'developer2', email: 'developer@email.com', password: 'password')
    assert_not @user2.valid?
  end

  test 'username should not be too long' do
    @user.username = 'a' * 13
    assert_not @user.valid?
  end

  test 'username should not be to short' do
    @user.username = 'aaa'
    assert_not @user.valid?
  end

  test 'password should not be too long' do
    @user.password = 'a' * 17
    assert_not @user.valid?
  end

  test 'password should not be to short' do
    @user.password = 'a' * 5
    assert_not @user.valid?
  end
end

# rubocop : enable Layout/EndOfLine
