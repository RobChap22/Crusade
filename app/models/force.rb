class Force < ApplicationRecord
  # before_create :set_supply

  belongs_to :user
  has_many :units, dependent: :destroy

  FACTIONS = ['Imperium', 'Chaos', 'Aeldari', 'Tyranids', 'Orks', 'Necrons', 'Tau Empire']
  SUPPLY = ['power', 'points']
  validates :name, presence: true
  validates :faction, presence: true, inclusion: { in: FACTIONS }
  validates :supply_type, inclusion: { in: SUPPLY }

  private

  # def set_supply
  #   self.
  # end
end
