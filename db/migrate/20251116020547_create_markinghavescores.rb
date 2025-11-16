class CreateMarkinghavescores < ActiveRecord::Migration[8.0]
  def change
    create_table :markinghavescores do |t|
      t.integer :marking_id
      t.integer :piece_id

      t.timestamps
    end
  end
end
