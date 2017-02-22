class OrganizationalTask < ApplicationRecord
  # Direct associations

  belongs_to :task,
             :foreign_key => "limit_tasks",
             :counter_cache => true

  belongs_to :organization,
             :counter_cache => true

  # Indirect associations

  # Validations

end
