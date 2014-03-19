class User < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  has_secure_password

  has_attached_file :profile_pic, :styles => {:thumb => "200x200>"},
                    :url => "/assets/users/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/users/:id/:style/:basename.:extension"

  validates_attachment_content_type :profile_pic, :content_type => ['image/jpeg', 'image/png']
  validates_attachment_size :profile_pic, :less_than => 5.megabytes

  def is_admin?
    self.type == "Admin"
  end
  
end