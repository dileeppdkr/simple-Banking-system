class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :phone_number
      t.string :address
      t.string :ssn
      t.boolean :admin , default: false
      t.string :password_digest

      t.timestamps
    end
  end
end
