class Thing < ApplicationRecord
  belongs_to :user

  validates :name,:edate, :ecity, :estate, presence: true
  validate :valid_date

  private
  def valid_date
    if edate.present? && edate < Date.today
      errors.add(:edate, "can't be in the past")
    end
  end
end
