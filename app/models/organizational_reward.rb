class OrganizationalReward < ApplicationRecord
  # Direct associations

  belongs_to :reward

  belongs_to :organization

  # Indirect associations

  # Validations

end
