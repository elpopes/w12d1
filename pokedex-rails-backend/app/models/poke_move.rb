# == Schema Information
#
# Table name: poke_moves
#
#  id         :bigint           not null, primary key
#  pokemon_id :bigint           not null
#  move_id    :bigint           not null
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class PokeMove < ApplicationRecord
  validates :poke_move, length: { in: 3..255 }, uniqueness: { message: "'%{value}' is already in use" }

  belongs_to :pokemon
  belongs_to :move
end
