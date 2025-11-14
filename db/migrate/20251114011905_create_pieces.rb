class CreatePieces < ActiveRecord::Migration[8.0]
  def change
    create_table :pieces do |t|
      t.string :title
      t.integer :composer_id
      t.string :pic

      t.timestamps
    end
  end
end
