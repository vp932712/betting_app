class CreateBets < ActiveRecord::Migration[5.1]
  def change
    create_table :bets do |t|
      t.string :category
      t.text :description
      t.float :bet_amount
      t.integer :better_id
      t.integer :bookie_id
      t.integer :winner
      t.integer :loser
      t.datetime :expires
      t.boolean :draw

      t.timestamps
    end
  end
end
