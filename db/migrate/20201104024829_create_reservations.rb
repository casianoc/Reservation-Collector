class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.date :date
      t.string :time
      t.string :name
      t.string :number

      t.timestamps
    end
  end
end
