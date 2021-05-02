class Post < ApplicationRecord
    belongs_to :user
    has_many :pictures
    has_many :likes
    has_many :comments
end
