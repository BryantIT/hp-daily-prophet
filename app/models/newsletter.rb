class Newsletter < ApplicationRecord
  belongs_to :user
  has_many :articles
end
