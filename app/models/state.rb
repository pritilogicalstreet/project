class State < ApplicationRecord
  has_many :districts
  validates :name, presence: true
  validates :name, format: {with: /[a-zA-Z]/}
end
