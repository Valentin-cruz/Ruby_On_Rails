class Message < ApplicationRecord
    has_many :comments, as: :commentable
    belongs_to :post :dependent => :delete_all
    belongs_to :user
    validates :author, :message,  presence: true
    validates :title,  length: { is: 15 }
end
