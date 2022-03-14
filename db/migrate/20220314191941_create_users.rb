class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      # makes it so a user has to inpiut a email to be added 
      t.string :email, null: false
      t.string :password_digest

      t.timestamps
    end
  end
end
