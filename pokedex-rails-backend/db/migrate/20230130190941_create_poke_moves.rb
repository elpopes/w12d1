class CreatePokeMoves < ActiveRecord::Migration[7.0]
  def change
    create_table :poke_moves do |t|
      t.references :pokemon, null: false, foreign_key: true
      t.references :move, null: false, foreign_key: true
      t.string :name, null: false

      t.timestamps
    end
    add_index :poke_moves, :name, unique: true
    # add_index :poke_moves, :move, unique: true
    # add_index :poke_moves, :pokemon, unique: true
  end
end
