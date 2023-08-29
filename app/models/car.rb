class Car < ApplicationRecord
  belongs_to :user

  
  validates :name, presence: true
  validates :year, presence: true 
  validates :color, presence: true
  validates :plate_no, presence: true
  validates :price, presence: true
  validates :photo, presence: true
  
end
