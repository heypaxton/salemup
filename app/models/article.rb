class Article < ActiveRecord::Base
  validates :title, presence: true 
  validates :description, presence: true
  validates :published_date, presence: true
end
