class Cohort < ActiveRecord::Base
  validates :year, presence: true
  validates :month, presence: true
  validates :location, presence: true
end
