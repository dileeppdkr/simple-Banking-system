class CreateWithdrawals < ActiveRecord::Migration[5.1]
  def change
    create_table :withdrawals do |t|
      # t.integer :user_id
      t.date :date
      t.float :amount
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
