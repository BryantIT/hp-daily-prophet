class Newsletter < ApplicationRecord
  belongs_to :user
  has_many :articles
  has_many :events

  validates :title, :sub_title, :date, :summary, presence: true
  validates :title, length: {minimum: 6}
  validates :summary, length: {minimum: 6}


  scope :my_newsletters, -> (id) {where(user_id: id) }

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
