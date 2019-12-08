class Article < ApplicationRecord
  belongs_to :newsletter
  has_one_attached :photo

  
end
