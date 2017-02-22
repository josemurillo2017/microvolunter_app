class VolunteerActivityLog < ApplicationRecord
  # Direct associations

  belongs_to :task

  belongs_to :volunteer,
             :counter_cache => true

  # Indirect associations

  # Validations

end
