class CreateCampus < ActiveRecord::Migration
  def change
    create_table :campus do |t|
      t.string :location

      t.timestamps
    end
  end
end
