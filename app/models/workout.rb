class Workout < ApplicationRecord

  belongs_to :user

  validates :day, presence: true

  default_scope { order(day: :desc) }

end
