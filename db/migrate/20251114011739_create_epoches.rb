class CreateEpoches < ActiveRecord::Migration[8.0]
  def change
    create_table :epoches do |t|
      t.string :name

      t.timestamps
    end
  end
end
