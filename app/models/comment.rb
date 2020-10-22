class Comment < ApplicationRecord
  belongs_to :post

  validates :title, presence: true, length: { maximum: 20 }

  validates :description, presence: true, length: { maximum: 100 }
end