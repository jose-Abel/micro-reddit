class User < ApplicationRecord
  validates :username, presence: true, uniqueness:  { case_sensitive: false}, length: { minimum: 4, maximum: 12 }

  validates :email, presence: true, uniqueness: { case_sensitive: false }

  validates :password, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 6, maximum: 16 }
end