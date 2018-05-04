class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|

      t.string :name
      t.string :description
      t.string :status
      t.integer :size
      t.datetime :date
      t.belongs_to :user

      t.timestamps
    end
  end
end
