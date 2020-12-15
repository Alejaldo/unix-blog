class AddUsernameIndex < ActiveRecord::Migration[6.0]
  def change
    add_index :users, :username, unique: true #like at ...devisw_create_users.rb
  end
end
