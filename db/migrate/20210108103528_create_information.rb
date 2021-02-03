class CreateInformation < ActiveRecord::Migration[6.0]
  def change
    create_table :information do |t|
    	t.integer "empid"
    	t.string "empnm"
    	t.string "add"
    	t.string "dept"

      t.timestamps
    end
    add_index("information","empid")
  end
end
