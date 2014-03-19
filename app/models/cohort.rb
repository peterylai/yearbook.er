class Cohort < ActiveRecord::Base
  validates :year, presence: true
  validates :month, presence: true

  belongs_to :campus
  
  has_attached_file :cohort_photo,
                    :url => "/assets/cohorts/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/cohorts/:id/:style/:basename.:extension"

  validates_attachment_content_type :cohort_photo, :content_type => ['image/jpeg', 'image/png']
  validates_attachment_size :cohort_photo, :less_than => 5.megabytes
end
