class Event < ApplicationRecord
  belongs_to :user
  validates :name,:edate, :ecity, :estate, presence: true
  has_many :rsvps, dependent: :destroy
  has_many :users_rsvped, through: :rsvps, source: :user
  has_many :comments
  has_many :user_comments, through: :comments, source: :user
  validate :valid_date

  private
  def valid_date
    if edate.present? && edate < Date.today
      errors.add(:edate, "can't be in the past")
    end
  end
end
