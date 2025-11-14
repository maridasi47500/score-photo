class CreateComposerhasepoches < ActiveRecord::Migration[8.0]
  def change
    create_table :composerhasepoches do |t|
      t.integer :composer_id
      t.integer :epoch_id

      t.timestamps
    end
  end
end
