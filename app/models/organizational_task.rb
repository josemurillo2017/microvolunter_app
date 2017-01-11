class OrganizationalTask < ApplicationRecord
  # Direct associations

  has_many   :volunteer_activity_logs,
             :foreign_key => "task_id",
             :dependent => :destroy

  belongs_to :task

  belongs_to :organization

  # Indirect associations

  # Validations

end
