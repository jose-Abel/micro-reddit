# rubocop : disable Layout/EndOfLine

class User < ApplicationRecord
  has_many :posts, dependent: :destroy

  has_many :comments, dependent: :destroy

  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 4, maximum: 12 }

  validates :email, presence: true, uniqueness: { case_sensitive: false }

  validates :password, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 6, maximum: 16 }
end

# rubocop : enable Layout/EndOfLine
