class Unit < ApplicationRecord
  belongs_to :force

  ROLES = ['HQ', 'Elite', 'Troops', 'Fast Attack', 'Heavy Support', 'Lord of War', 'Other']
  RANK = ['Battle-ready', 'Blooded', 'Battle-hardened', 'Heroic', 'Legendary']
  validates :name, presence: true
  validates :role, presence: true, inclusion: { in: ROLES }
  validates :rank, inclusion: { in: RANK }
end
