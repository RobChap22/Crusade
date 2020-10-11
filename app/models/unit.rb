class Unit < ApplicationRecord
  before_create :set_default_values

  belongs_to :force

  ROLES = ['HQ', 'Elite', 'Troops', 'Fast Attack', 'Heavy Support', 'Lord of War', 'Other']
  RANK = ['Battle-ready', 'Blooded', 'Battle-hardened', 'Heroic', 'Legendary']
  validates :name, presence: true
  validates :role, presence: true, inclusion: { in: ROLES }
  # validates :rank, inclusion: { in: RANK }
  validates :supply_value, presence: true


  private

  def set_default_values
    self.rank = 'Battle-ready'
    self.experience_points = 0
    self.crusade_points = 0
  end

end
