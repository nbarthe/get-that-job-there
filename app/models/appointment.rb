class Appointment < ApplicationRecord
  ATTRIBUTES = %i[schedule_at duration user_id coach_id start_time end_time]
  belongs_to :user
  belongs_to :coach

  validates :duration, presence: true, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 8 }

  # this is a failed attempt of validating schedule_at
  # validate :schedule_at_is_valid_datetime

  # private

  # def schedule_at_is_valid_datetime
  #   errors.add(:happened_at, "We don't have time machines yet") if (schedule_at < Time.zone.now)
  # end
end
