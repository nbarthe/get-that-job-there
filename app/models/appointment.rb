class Appointment < ApplicationRecord
  ATTRIBUTES = %i[schedule_at duration user_id coach_id]
  belongs_to :user
  belongs_to :coach
end
