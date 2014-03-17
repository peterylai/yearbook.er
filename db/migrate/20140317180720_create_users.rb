class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :first_name
    	t.string :last_name 
    	t.string :email
    	t.string :password_digest
    	t.string :profile_pic
    	t.string :github
    	t.string :linkedin
    	t.string :bio 
    	t.boolean	:admin
    	t.string :website
    	t.string :employer
    end
  end
end
