class CreatePiecehasbowingtechniques < ActiveRecord::Migration[8.0]
  def change
    create_table :piecehasbowingtechniques do |t|
      t.integer :piece_id
      t.integer :bowingtechnique_id

      t.timestamps
    end
  end
end
