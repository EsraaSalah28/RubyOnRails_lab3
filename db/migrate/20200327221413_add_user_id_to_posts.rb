class AddUserIdToPosts < ActiveRecord::Migration[5.2]
  def change
    change_table :posts do |t|
      add_reference :posts, :user,foreign_key:true
    end
  end
end
