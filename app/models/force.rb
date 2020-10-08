class Force < ApplicationRecord
  belongs_to :user
  has_many :forces, dependent: :destroy

  FACTIONS = ['Imperium', 'Chaos', 'Aeldari', 'Tyranids', 'Orks', 'Necrons', 'Tau Empire']
  validates :name, presence: true
  validates :faction, presence: true, inclusion: { in: FACTIONS }
end
