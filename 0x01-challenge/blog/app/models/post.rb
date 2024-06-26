class Post < ApplicationRecord
  has_many  :comments, dependent: :destroy
  attribute :online, :boolean, default: true
  validates :title, presence: true, length: {minimum: 5}
  validates :body,  presence: true
end
