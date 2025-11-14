class CreateComposers < ActiveRecord::Migration[8.0]
  def change
    create_table :composers do |t|
      t.string :name
      t.string :country_id

      t.timestamps
    end
  end
end
