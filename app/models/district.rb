class District < ApplicationRecord
  belongs_to :state
  has_many :talukas
  validates :name, presence: true
  validates :name, format: {with: /[a-zA-Z]/}
end
