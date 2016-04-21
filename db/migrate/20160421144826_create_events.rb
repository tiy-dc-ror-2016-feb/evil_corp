class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.belongs_to :account, index: true, foreign_key: true
      t.string :description
      t.integer :value_in_cents

      t.timestamps null: false
    end
  end
end
