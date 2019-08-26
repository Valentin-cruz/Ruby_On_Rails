class Message < ApplicationRecord
    belongs_to :post :dependent => :delete_all
    validates :author, :message,  presence: true
    validates :title,  length: { is: 15 }
end
