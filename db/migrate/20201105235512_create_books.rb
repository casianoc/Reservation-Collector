class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.references :restaurant, foreign_key: true
      t.references :reservation, foreign_key: true

      t.timestamps
    end
  end
end
