class Newsletter < ApplicationRecord
  belongs_to :user
  has_many :articles
  has_many :events

  def archive
    # move all newsletters older than one year to archive table
  end

  def sort_by_year
    # sort by year
  end

  def sort_by_month
    # sort by month
  end

  def sort_by_author
    # sorth by author
  end

  
end
