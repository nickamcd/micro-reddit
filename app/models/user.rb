class User < ApplicationRecord
  has_many :posts

  validates :username, uniqueness: true, length: { in: 4..12 }, presence: true
  validates :password, length: { in: 6..16 }, presence: true
end
