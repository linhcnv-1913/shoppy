class CreateAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :admins do |t|
      t.string :name
      t.string :email
      t.integer :role
      t.string :password_digest
      t.string :remember_digest
      t.string :reset_password_token

      t.timestamps
    end
  end
end
