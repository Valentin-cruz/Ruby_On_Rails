class Post < ApplicationRecord
    has_many :comments, as: :commentable
    belongs_to :blog
    belongs_to :user
    has_many :messages
    validates :title, :content, presence: true
    validates :title,  length: { is: 7 }
end
