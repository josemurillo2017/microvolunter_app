class OrganizationalTask < ApplicationRecord
  # Direct associations

  has_many   :volunteer_activity_logs,
             :foreign_key => "task_id",
             :dependent => :destroy

  belongs_to :task

  belongs_to :organization

  has_many :photos, through: :organizations

  # Indirect associations

  # Validations

end
