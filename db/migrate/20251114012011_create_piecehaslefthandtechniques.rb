class CreatePiecehaslefthandtechniques < ActiveRecord::Migration[8.0]
  def change
    create_table :piecehaslefthandtechniques do |t|
      t.integer :piece_id
      t.integer :lefthandtechnique_id

      t.timestamps
    end
  end
end
