class Force < ApplicationRecord
  belongs_to :user
  has_many :forces, dependent: :destroy
end
