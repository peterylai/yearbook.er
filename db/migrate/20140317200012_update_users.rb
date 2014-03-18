class UpdateUsers < ActiveRecord::Migration
  def change
  	change_table :users do |t|
  		t.remove :bio
  		t.text :bio 
  	end
  end
end
