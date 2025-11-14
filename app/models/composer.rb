class Composer < ApplicationRecord
  has_many :pieces
  has_and_belongs_to_many :epoches, :join_table => :composerhasepoches

end
