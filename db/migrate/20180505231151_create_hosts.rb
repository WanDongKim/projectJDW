class CreateHosts < ActiveRecord::Migration[5.2]
  def change
    create_table :hosts do |t|
      t.string :name, null: false, default: ""
      t.string :email, default: ""
      t.string :address, default: ""
      t.string :phoneNum, default: ""
      t.string :category, null: false, default: ""
      t.timestamps
    end
  end
end
