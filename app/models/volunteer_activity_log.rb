class VolunteerActivityLog < ApplicationRecord
  # Direct associations

  belongs_to :task,
             :class_name => "OrganizationalTask"

  belongs_to :volunteer

  # Indirect associations

  # Validations

end
