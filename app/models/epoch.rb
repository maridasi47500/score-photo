class Epoch < ApplicationRecord
  has_and_belongs_to_many :composers, :join_table => :composerhasepoches

end
