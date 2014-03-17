class AddPhotoToCohort < ActiveRecord::Migration
  def change
    change_table :cohorts do |t|
      t.attachment :cohort_photo
    end
  end
end
