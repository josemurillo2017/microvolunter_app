class OgtPhoto < ApplicationRecord
  belongs_to :photo, :foreign_key => "photo_logo_id"
  belongs_to :organizational_task
end
