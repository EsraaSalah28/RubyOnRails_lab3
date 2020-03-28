class AddUserIdToComments < ActiveRecord::Migration[5.2]
  def change
    unless column_exists? :posts, :user_id
      add_column :posts, :user_id, :integer
    end
    add_reference :comments ,:post ,foreign_key: true
    add_reference :comments ,:user ,foreign_key: true

  end
end
