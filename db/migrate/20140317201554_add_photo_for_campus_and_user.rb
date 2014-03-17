class AddPhotoForCampusAndUser < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.remove :profile_pic
      t.attachment :profile_pic
    end
  end

  def change
    change_table :campuses do |t|
      t.attachment :campus_pic
    end
  end
end
