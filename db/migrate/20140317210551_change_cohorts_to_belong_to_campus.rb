class ChangeCohortsToBelongToCampus < ActiveRecord::Migration
  def change
    change_table(:cohorts) do |t|
      t.references(:campus)
    end
    remove_column(:cohorts, :location)
  end
end
