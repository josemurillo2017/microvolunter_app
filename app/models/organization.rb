class Organization < ApplicationRecord
  # Direct associations

  has_many   :organizationalrewards,
             :class_name => "OrganizationalReward",
             :dependent => :destroy

  has_many   :organizational_tasks,
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
