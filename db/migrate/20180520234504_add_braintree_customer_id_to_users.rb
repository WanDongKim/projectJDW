class AddBraintreeCustomerIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :braintree_customer_id, :integer
    remove_column :reservations, :express_token
    remove_column :reservations, :express_payer_id
    remove_column :reservations, :ip
    remove_column :reservations, :violation_id

  end
end
