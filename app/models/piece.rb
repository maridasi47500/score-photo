class Piece < ApplicationRecord
  has_and_belongs_to_many :lefthandtechniques, :join_table => :piecehaslefthandtechniques
  has_and_belongs_to_many :bowingtechniques, :join_table => :piecehasbowingtechniques
end
