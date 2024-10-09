class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :chair

  validates :start_date, :end_date, presence: true
  validates :status, inclusion: { in: %w[pending confirmed completed] }
  validate :end_date_after_start_date

  def end_date_after_start_date
    errors.add(:end_date, "must be after the start date") if end_date <= start_date
  end
end
