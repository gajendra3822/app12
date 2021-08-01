class CreateUsers < ActiveRecord::Migration[6.1]
  def up
    create_table :users do |t|
      t.string "first_name", :limit =>20
      t.string "last_name", :limit =>20
      t.string "email", :default =>'', :nul =>false
      t.string "password", :limit =>20 

      t.timestamps
    end
  end
  def down
    drop_table :users
  end

end
