class Task < ApplicationRecord
  # Direct associations

  has_many   :organizational_tasks,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
