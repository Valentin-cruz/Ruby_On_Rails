class Post < ApplicationRecord
    belongs_to :blog
    has_many :messages
    validates :title,  length: { is: 7 }
end
