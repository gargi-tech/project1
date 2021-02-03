class CreateUserinfos < ActiveRecord::Migration[6.0]
  def change
    create_table :userinfos do |t|
      t.string :user_name
      t.string :email_id
      t.string :password

      t.timestamps
    end
  end
end
