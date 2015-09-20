class Place < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :photos
  
  geocoded_by :address
  after_validation :geocode


  validates :name, :presence => true, :length => { minimum: 3, maximum: 24}
  validates :address, :presence => true, :length => {minimum: 3}
  validates :description, :presence => true, :length => {minimum: 10, maximum: 2000}
end
