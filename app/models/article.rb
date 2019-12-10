class Article < ApplicationRecord
  belongs_to :newsletter
  has_one_attached :photo

  validates: :title, :body, presence: true
  validates: :title, length: {minimum: 6}
  validates: :body, length: {minimum: 20}


end
