class Unit < ApplicationRecord
  belongs_to :force

  ROLES = ['HQ', 'Elite', 'Troops', 'Fast Attack', 'Heavy Support', 'Lord of War', 'Other']
  validates :name, presence: true
  validates :role, presence: true, inclusion: { in: ROLES }
end
