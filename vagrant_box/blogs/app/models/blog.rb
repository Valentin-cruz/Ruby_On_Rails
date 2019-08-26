class Blog < ApplicationRecord
    has_many :comments, as: :commentable
    has_many :posts
    has_many :owners
    validates :name, :description,  presence: true
end
