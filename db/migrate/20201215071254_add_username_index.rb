class AddUsernameIndex < ActiveRecord::Migration[6.0]
  def change
    add_index :users, :email, unique: true #like at ...devisw_create_users.rb
  end
end
