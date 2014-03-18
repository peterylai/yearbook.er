class Campus < ActiveRecord::Base
 validates :location, presence: true

 has_many :cohorts

 has_attached_file :campus_pic,
                    :url => "/assets/campuses/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/campuses/:id/:style/:basename.:extension"

  validates_attachment_content_type :campus_pic, :content_type => ['image/jpeg', 'image/png']
  validates_attachment_size :campus_pic, :less_than => 5.megabytes

end
