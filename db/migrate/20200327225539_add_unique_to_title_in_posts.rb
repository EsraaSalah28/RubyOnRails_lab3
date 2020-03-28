class AddUniqueToTitleInPosts < ActiveRecord::Migration[5.2]
  def change
    def change
      change_column_null :posts, :title, false
    end
  end

end
