class Post < ApplicationRecord
  belongs_to :user

  validates :text, presence: true
  validates :image, presence: true, format: { with: /https?/ }
end