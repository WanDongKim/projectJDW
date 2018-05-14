class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.integer :user
      t.integer :event


      t.timestamps
    end
    add_index :reservations, :user
    add_index :reservations, :event
  end
end
