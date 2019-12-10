class Event < ApplicationRecord
  has_one_attached :photo
  belongs_to :newsletter

  validates: :title, :body, :date, presence: true
  validates: :title, length: {minimum: 6}
  validates: :body, length: {minimum: 10}
end
