class Post < ApplicationRecord
has_many :comments
validates :title , :text , :presence => true
validates :title, uniqueness: true
validates :title, length: { maximum: 50 }


end
