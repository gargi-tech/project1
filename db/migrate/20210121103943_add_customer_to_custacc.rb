class AddCustomerToCustacc < ActiveRecord::Migration[6.0]
  def change
    add_reference :custaccs, :customer, null: false, foreign_key: true
  end
end
