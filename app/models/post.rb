# rubocop : disable Layout/EndOfLine

class Post < ApplicationRecord
  belongs_to :user

  has_many :comments, dependent: :destroy

  validates :title, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 6, maximum: 100 }

  validates :description, presence: true, length: { minimum: 10, maximum: 300 }
end

# rubocop : enable Layout/EndOfLine
