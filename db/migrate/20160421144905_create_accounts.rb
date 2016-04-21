class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.belongs_to :branch, index: true, foreign_key: true
      t.string :account_number
      t.integer :balance_in_cents

      t.timestamps null: false
    end
  end
end
