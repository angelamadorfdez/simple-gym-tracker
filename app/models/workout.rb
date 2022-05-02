class Workout < ApplicationRecord

  validates :day, presence: true

  default_scope { order(day: :desc) }

end
