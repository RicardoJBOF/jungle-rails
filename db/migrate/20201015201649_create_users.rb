class CreateUsers < ActiveRecord::Migration

  #drop_table :users

  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
