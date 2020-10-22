# rubocop : disable Layout/EndOfLine

class Comment < ApplicationRecord
  belongs_to :post

  belongs_to :user

  validates :title, presence: true, length: { maximum: 20 }

  validates :description, presence: true, length: { maximum: 100 }
end

# rubocop : enable Layout/EndOfLine
