class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.float :money
      t.integer :bookie_id
      t.integer :better_id

      t.timestamps
    end
  end
end
