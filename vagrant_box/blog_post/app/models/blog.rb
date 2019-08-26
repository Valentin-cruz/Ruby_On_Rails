class Blog < ApplicationRecord
    has_many :posts
    validates :name, :decription,  presence: true
end
