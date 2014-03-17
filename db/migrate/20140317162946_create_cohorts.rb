class CreateCohorts < ActiveRecord::Migration
  def change
    create_table :cohorts do |t|
      t.string :location
      t.string :year
      t.string :month
      t.string :nickname
      t.timestamps
    end
  end
end
