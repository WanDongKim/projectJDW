class CreateHosts < ActiveRecord::Migration[5.2]
  def change
    create_table :hosts do |t|
      t.string :name
      t.string :email
      t.string :address
      t.string :phoneNum
      t.string :category

      t.timestamps
    end
  end
end
