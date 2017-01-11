class OrganizationalTask < ApplicationRecord
  # Direct associations

  belongs_to :task

  belongs_to :organization

  # Indirect associations

  # Validations

end
