class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :body
      t.references :article, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
