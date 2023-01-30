class RemoveColumn < ActiveRecord::Migration[7.0]
  def change
    drop_table :poke_moves
  end
end
