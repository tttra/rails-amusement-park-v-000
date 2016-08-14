class Attraction < ActiveRecord::Base
  has_many :rides
  has_many :users, through: :rides

  validates_presence_of :name, :tickets, :nausea_rating, :happiness_rating, :min_height

end
