class Force < ApplicationRecord
  before_create :set_default_values

  belongs_to :user
  has_many :units, dependent: :destroy

  FACTIONS = ['Imperium', 'Chaos', 'Aeldari', 'Tyranids', 'Orks', 'Necrons', 'Tau Empire']
  validates :name, presence: true
  validates :faction, presence: true, inclusion: { in: FACTIONS }

  private

  def set_default_values
    self.power ? self.supply_limit = 50 : self.supply_limit = 1000
    self.battle_tally = 0
    self.battles_won = 0
    self.requisition_points = 5
    self.supply_used = 0
  end

end
