class Reward < ApplicationRecord
  # Direct associations

  has_many   :organizationalrewards,
             :class_name => "OrganizationalReward",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
