class CreateCustomer1s < ActiveRecord::Migration[6.0]
  def change
    create_table :customer_1s do |t|
      t.string :name
      t.string :addr

      t.timestamps
    end
  end
end
