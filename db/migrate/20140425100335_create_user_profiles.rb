class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :email
      t.integer :phone_number
      t.integer :age

      t.timestamps
    end
  end
end
