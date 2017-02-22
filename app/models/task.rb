class Task < ApplicationRecord
  # Direct associations

  has_many   :volunteer_activity_logs,
             :dependent => :destroy

  has_many   :organizational_tasks,
             :foreign_key => "limit_tasks",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
